# /release-docs — Released features → Docs PR

You update the Gameball docs for features that just shipped, open **one pull request** with every change, and tell the docs team in Slack so they can review, edit and merge it.

This command usually runs **unattended in a Claude Code cloud session**, started by the product team's `/release-linear` command. Nobody is watching the session, so:
- **Never stop to ask a question.** When something is unclear, make the most reasonable call, and list it under "Needs your review" in the PR.
- **The PR review is the approval.** This is the one exception to the "show changes and wait for approval" rule in `CLAUDE.md`: never push to `main`, never merge — always work on a branch and open a PR.

It can also be run by hand: `/release-docs <release notes>`.

---

## Input

`$ARGUMENTS` is the release, as produced by `/release-linear`. It contains:
- **Release number and headline** — e.g. `#001 · Sign in to Gameball with your company login`
- **Date**
- One block per released item: **title**, **type** (New / Improved / Fixed), **surfaces** (Dashboard, Widget, APIs, Shopify, Salla), **plans**, the user-facing **description** and capability bullets, and the **Linear source link**
- Optionally, **screenshot URLs** per item

If `$ARGUMENTS` is empty, stop and say: "Nothing to document — pass the release notes, e.g. `/release-docs <release entry>`."

Set:
- `{CL_NUM}` — release number without `#` (e.g. `001`)
- `{HEADLINE}` — release headline
- `{DATE_LABEL}` — date as `November 11 2026` (no comma — the changelog format)
- `{YEAR}` — 4-digit year
- `{BRANCH}` — `docs/release-{CL_NUM}`

---

## STEP 0: Set up the branch

1. You are at the repo root. `git fetch origin main` and start from the latest `main`: `git checkout -B {BRANCH} origin/main`.
2. If the branch already exists on the remote (a re-run for the same release), check it out and continue on it instead of starting over.

---

## STEP 1: Read the conventions

Read `.claude/commands/product-doc.md` in full before writing anything. Every page you create or change follows its rules: question-style titles, plan availability table, intro paragraph, Mintlify components, tone (second person, active voice, no emoji, no "we/our"), image placeholders, Important Notes, Common Questions, Related Articles, and `docs.json` placement.

---

## STEP 2: Decide the impact of each item

For every released item, work out where the docs need to change **before** editing anything.

**A. Skip items that need no docs**
- **Fixed** items, unless the docs currently describe the broken behaviour as correct, or the fix changes what the merchant sees or does.
- Internal-only items (staff/admin-panel tools, infrastructure) that slipped into the release.

**B. Search the docs**

Search with Grep across `product-documentation/`, `tutorials/`, `installation-guides/`, `api-reference/` and `llms.txt` for:
- the feature name and its synonyms (e.g. SSO → "single sign-on", "SSO", "login", "sign in", "password")
- the dashboard path it lives in (e.g. "Settings → Security", "Admin Settings")
- the entities it touches (e.g. "referral", "pending points", "tiers")
- for **APIs** items: the endpoint path and resource name

Read every page that matches meaningfully. Also check `docs.json` for the section the feature belongs to.

**C. Pick one impact level per item**

| Level | When | What you do |
|---|---|---|
| **None** | Already documented correctly, or no merchant-facing change | Nothing — note it in the PR |
| **Single article** | One existing page covers this area | Update that page only — add the new option, step, setting or behaviour where it belongs |
| **Multiple articles** | The change shows up in several pages (e.g. a new plan gate, a new step in a shared flow, a changed default) | Update each affected page, consistently |
| **New article / section** | A new capability with no natural home | Create the page with the right template from `product-doc.md`, add it to `docs.json`, link it from 1–3 related pages |
| **Wide change** | A rename, a new concept or a behaviour change that is referenced across much of the docs (e.g. a renamed menu, a new term replacing an old one, a changed core rule) | Sweep every occurrence, update them consistently, and list every file touched in the PR |

Rules of thumb:
- **Prefer extending an existing page** over creating a new one. Only create a page when the feature would be a stretch inside any existing article.
- **Improved** items are almost always Single or Multiple. **New** items are often New article, sometimes Single.
- **APIs** items: update the endpoint's page under `api-reference/` (request/response fields, examples) and add an entry to `changelog/api-updates/{YEAR}.mdx`.
- Write the decision down as a table — it goes into the PR body:

| Item | Type | Impact | Files |
|---|---|---|---|

---

## STEP 3: Make the changes

Follow `product-doc.md` for every page.

- **Updating a page:** read it fully, change only what the release affects, and keep its structure, components and tone. Add a Common Questions entry if the change raises an obvious question.
- **New page:** follow STEP 0–13 of `product-doc.md`, including `docs.json` (path format `product-documentation/{section}/{filename}`, no `.mdx`).
- **Plans:** use the plan line from the release in the availability table. If the release says "All plans" or gives nothing, keep whatever the page already states and flag it under "Needs your review".
- **Screenshots:** if the release gives a screenshot URL for an item, embed it with `<Frame>`. Otherwise use the image-placeholder format from STEP 9 of `product-doc.md` and list each placeholder under "Needs your review".
- **Never invent behaviour.** Document only what the release text states. If a detail the page needs isn't in the release (a limit, a default, an exact label), leave a clear `{/* TODO: confirm … */}` comment in the MDX and list it under "Needs your review".

---

## STEP 4: Product changelog

Add one entry for the whole release to the top of `changelog/product-updates/{YEAR}.mdx` — directly after the frontmatter, above the newest existing `<Update>`. Match the existing entries exactly:

```mdx
<Update label="{DATE_LABEL}" description="{HEADLINE}">

## New Features

### {Title}

{2–3 sentence public description, benefit-focused. End with the plan availability, e.g. "Available on Pro and Guru plans."}

* {Bullet detail}
* {Bullet detail}

***

## Other Improvements

### {Title}

{1–2 sentences.}

***

## Bug Fixes

* **{Title}** — {one line}

</Update>
```

- Include every merchant-facing item from the release, even ones whose impact level was **None**.
- Link each feature title to its docs page when one exists (`[Title](/product-documentation/...)`).
- Omit empty sections. `***` between items, no ticket IDs, no internal names.
- If `{YEAR}.mdx` doesn't exist, create it by copying the frontmatter pattern of the previous year's file, and add it to the **Updates → Product Updates** group in `docs.json`.

---

## STEP 5: llms.txt

If any page was **added, renamed or removed**, update `llms.txt`: add/rename/remove the line in the matching section, in the same `- [Title](https://docs.gameball.co/<path>): short description` format. Pages that were only edited don't need an `llms.txt` change.

---

## STEP 6: Check your work

1. `docs.json` is valid JSON: `python3 -c "import json;json.load(open('docs.json'))"`.
2. Every page listed in `docs.json` that you added exists as a file.
3. Every internal link you added points to an existing page.
4. If Node is available, run `npx --yes mint broken-links` (give it up to 3 minutes). Fix anything you introduced; ignore pre-existing failures and don't let a tool failure block the PR.

---

## STEP 7: Commit, push, open the PR

1. `git add` only the files you changed (explicit paths, never `-A`).
2. Commit: `docs: release #{CL_NUM} — {HEADLINE}`.
3. `git push -u origin {BRANCH}`.
4. Open the PR against `main`:
   - **Title:** `docs: Release #{CL_NUM} — {HEADLINE}`
   - **Body:**

```markdown
Docs for product release **#{CL_NUM} — {HEADLINE}** ({DATE_LABEL}).

## What changed

| Item | Type | Impact | Files |
|---|---|---|---|
| ... | New | New article | `product-documentation/...` (new), `docs.json`, `llms.txt` |

Changelog: `changelog/product-updates/{YEAR}.mdx`

## Needs your review

- [ ] {every placeholder screenshot, TODO comment, assumed plan, or judgment call — one line each with the file}

## Sources

- {Linear link per item}

Merging this PR publishes the changes to docs.gameball.co.
```

Use `gh pr create` if it's available and authenticated. If it isn't, use whatever GitHub tooling the session provides to open the PR. If no PR can be opened, the pushed branch is enough: use `https://github.com/gameballers/gameball-docs/compare/main...{BRANCH}?expand=1` as the PR link and say so in Slack.

If a PR for `{BRANCH}` already exists (a re-run), push to it and update its body instead of opening a new one.

---

## STEP 8: Notify #product-docs

Post **one** message to **#product-docs** (channel ID `C0AGGB43F3J`) with `slack_send_message`. The Slack connector takes standard Markdown: `**bold**`, `<url|label>` links. At most one emoji.

```
📄 **Docs PR ready — Release #{CL_NUM}: {HEADLINE}**

<{PR_URL}|{PR title}>

**What's in it**
• {Item} — {impact level}: {files, short}
• {Item} — {impact level}: {files, short}
• Changelog entry for {DATE_LABEL}

**Needs your review:** {N} items listed in the PR ({e.g. 2 screenshot placeholders, 1 plan to confirm}).

Review, edit on the branch if needed, and merge to publish to docs.gameball.co.
```

If Slack isn't available in the session, end your final output with that exact message so whoever started the run can post it.

---

## CRITICAL RULES

- **Never push to `main` and never merge.** One branch, one PR per release.
- **Never ask questions mid-run.** Decide, and flag the decision in "Needs your review".
- **Never invent product behaviour** — only what the release states; TODO comments for the rest.
- **Follow `product-doc.md`** for every page you touch.
- **`docs.json` must be updated** for every new page, and stay valid JSON.
- **Only touch files the release affects.** No drive-by rewrites of unrelated pages.
