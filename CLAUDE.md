# Gameball Docs — Claude Context

This is the Gameball product documentation repo, built with Mintlify (MDX files + `docs.json` navigation). It auto-deploys to docs.gameball.co on push to `main`.

**Git remote:** `https://github.com/gameballers/gameball-docs.git`  
**Branch:** `main`

---

## Critical Rule

**Never commit or push anything without showing the changes first and getting explicit approval.** Always present the full content or diff and wait for the user to say "push" before touching git.

**Exception — `/release-docs`:** it runs unattended (often in a Claude Code cloud session), so it never pushes to `main`. It works on a `docs/release-{N}` branch and opens a pull request; the PR review is the approval.

---

## Workflow: /update-article

Processes documentation update tasks from ClickUp. Run `/update-article` to kick off.

- **ClickUp List ID:** `901522626283`
- **ClickUp Status to process:** `Needs Update`
- **Slack channel:** `#product-questions`
- **Completed Status:** `Complete`

The skill reads each ClickUp task, finds the related Slack thread in `#product-questions`, enriches the task description with thread content, then creates or updates the relevant MDX article. One task at a time. Always show changes before pushing.

---

## Workflow: /release-docs

Turns a product release into a docs PR. Started by the product team's `/release-linear` command in a Claude Code cloud session, or run by hand with `/release-docs <release notes>`.

- Decides the impact of each released feature: no change, one article, several articles, a new article/section, or a wide change across the docs
- Updates the pages (following `product-doc.md`), `docs.json`, `llms.txt`, the API reference and `changelog/product-updates/{year}.mdx`
- Opens one PR per release on branch `docs/release-{N}` and posts it to **#product-docs** for review — never pushes to `main`

---

## Workflow: /accuracy-report

Monthly GBKnowledge bot accuracy report. Run `/accuracy-report` to kick off.

- Pulls tasks from ClickUp with status `complete` (bot wrong) and `reasoning issue` (bot right) from the GBKnowledge accuracy list
- Updates the ClickUp doc: **Document `3a40m-114715` / Page `3a40m-114055`** (Monthly Report - Bot Accuracy)
- Also posts a summary to the `#product-questions-accuracy` Slack channel
- Runs automatically on the 1st of each month (scheduled routine: `gbknowledge-accuracy-report`)

---

## Doc Conventions

- Article titles are questions: "What Is X?", "How Do I X?"
- Second person, active voice. No emoji. No "we/our."
- MDX components: `<Frame>`, `<Steps>`, `<Step>`, `<AccordionGroup>`, `<Accordion>`, `<Note>`, `<Warning>`, `<Tip>`, `<CardGroup>`, `<Card>`, `<Tabs>`, `<Tab>`
- Every new page must be added to `docs.json`
- Follow all 13 steps in `.claude/commands/product-doc.md`

---

## Support Contact

support@gameball.co
