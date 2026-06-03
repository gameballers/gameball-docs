# /update-article — ClickUp → Slack → Docs Automation

You are orchestrating a documentation update workflow that pulls tasks from ClickUp, enriches them with Slack thread content, and generates or updates Gameball product documentation articles.

---

## CONFIGURATION

Before running, confirm these values. If not already known from a previous run in this session, ask the user:

- **ClickUp List ID**: the specific list to pull tasks from
- **ClickUp Status**: the status name that marks tasks as ready to process (e.g., "Ready for Docs")
- **Slack Channel**: the channel name or ID to search for matching threads
- **Completed Status**: the ClickUp status to set after docs are published (e.g., "Complete")

---

## STEP 1: Authenticate

Authenticate with both services before doing anything else:

1. Call `mcp__claude_ai_ClickUp__authenticate` to connect to ClickUp.
2. Call `mcp__claude_ai_Slack__authenticate` to connect to Slack.

If either authentication fails, stop and report the error to the user.

---

## STEP 2: Fetch Pending Tasks

Query the configured ClickUp list for all tasks with the configured status.

- If **no tasks are found**: Report "No tasks found at status [STATUS] in list [LIST]. Nothing to process." and stop.
- If **tasks are found**: Report the count and list their titles. Then process them **one at a time** — never batch.

---

## STEP 3: Detect Phase and Process Each Task

For each task, determine the phase based on whether it has subtasks:

### PHASE 1 — No subtasks yet (Slack Enrichment)

**Goal**: Find the related Slack thread and enrich the ClickUp task description with its content.

**a. Read the task**
- Get: task name, current description, task ID.

**b. Search Slack**
- Search the configured Slack channel for a message whose text closely matches the task title.
- If multiple matches are found, pick the closest one and note the others to the user.
- If no match is found: notify the user and ask whether to skip this task or search with a different query.

**c. Fetch the thread**
- Retrieve all replies in the thread of the matched Slack message.
- Compile the thread content into a structured summary. Group related answers together. Remove noise (reactions, off-topic comments, bot messages).

**d. Update the ClickUp task description**
- Append the compiled thread content to the task's existing description in ClickUp via the ClickUp MCP.
- Format it clearly under a heading like "--- Slack Thread Summary ---" so it's distinguishable from the original description.

**e. Notify the user**
- Report: "I've updated the ClickUp task **'[Task Name]'** with the Slack thread content. Please review the task description in ClickUp and add subtasks telling me what article to create or update, then run `/update-article` again to proceed."
- Then move to the next task (if any) and repeat Phase 1 for it.

---

### PHASE 2 — Has subtasks (Documentation Update)

**Goal**: Use the task content and subtask directives to create or update a documentation article.

**a. Read the task fully**
- Get: task name, full description (including Slack thread content appended in Phase 1), all subtasks, task ID.

**b. Determine the doc action from subtasks**

Each subtask should indicate one of:
- `Create new article: <suggested path or section>` → create a new MDX file
- `Update existing article: <path/to/article.mdx>` → find and modify that file
- If the intent is ambiguous, ask the user before proceeding.

**c. Execute the doc action**

Follow **all conventions** from `.claude/commands/product-doc.md` (the full 13-step checklist). The task description is your primary source of content.

**For creating a new article:**
1. Research existing sibling articles to match tone and structure (use Glob/Grep).
2. Choose the correct template (A–E) based on article type.
3. Write the full MDX file with correct frontmatter, availability table (if applicable), intro, body, image placeholders, and Related Articles CardGroup.
4. Update `docs.json` to add the new page to the correct navigation group.

**For updating an existing article:**
1. Read the current file.
2. Apply only the changes indicated by the subtask — do not rewrite sections that weren't mentioned.
3. Preserve existing structure, components, and tone.

**d. Show changes to the user — STOP and wait for approval**

Present the full content of every created or modified file. For updates, show a clear diff or highlight what changed.

Say: "Here are the changes for task **'[Task Name]'**. Please review and let me know if you approve or have changes."

Do **not** proceed further until the user explicitly approves.

**e. On approval — commit, push, and close**

Only after explicit user approval:

1. `git add` the relevant files (specific paths, not `-A`).
2. `git commit -m "docs: [task title] [ClickUp #task-id]"` — use a heredoc.
3. `git push origin main`.
4. Mark the ClickUp task status as [COMPLETED_STATUS] via the ClickUp MCP.
5. Confirm: "Published and marked complete in ClickUp: **[Task Name]**."

**f. On rejection or change request**

Apply the requested edits, then re-show the full updated content and wait for approval again. Do not push until approved.

**g. Move to the next task**

After completing one task, present the next one (if any). Never auto-process the next task without surfacing it to the user first.

---

## CRITICAL RULES

- **One task at a time.** Never process multiple tasks silently in sequence.
- **Never push without explicit user approval.** Always show the full content/diff first.
- **Follow product-doc conventions strictly.** All 13 steps from `.claude/commands/product-doc.md` apply.
- **Titles as questions.** All article titles must follow the question pattern (What Is X?, How Do I X?, etc.).
- **Second person, active voice, no emoji, no "we/our."**
- **docs.json must be updated** whenever a new page is created.
- **Commit messages** must include the ClickUp task ID: `docs: [Task Title] [ClickUp #task-id]`
