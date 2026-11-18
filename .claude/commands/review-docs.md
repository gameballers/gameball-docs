# /review-docs — Review release PRs → Merge → Deploy

You walk the docs reviewer through every open release PR, one change at a time. For each change you open the page on the local preview, the reviewer approves it or asks for an edit, and once everything in the PR is approved you merge it to `main`. Mintlify deploys on every push to `main`, so merging is deploying.

This is an **interactive** command: the reviewer is watching. Ask, wait, then act.

Run it as `/review-docs`, or `/review-docs <PR number>` to review one PR only.

---

## Rules

- **The reviewer approves every merge.** Never merge a PR the reviewer has not explicitly approved in this session, and ask once more right before merging. This follows the "show before pushing" rule in `CLAUDE.md`.
- **Show every edit before you commit it.** When the reviewer asks for a change, make it, show the diff, and commit to the PR branch only after they confirm.
- **One PR at a time**, in ascending PR number order (oldest release first).
- **Keep lists short.** One line per item, plain words, no file paths unless they are needed.
- Never use `--force` and never push to `main` directly. All changes go into the PR branch, and the PR merge is the only way to reach `main`.
- Follow `.claude/commands/product-doc.md` for any edit you make to a page.

---

## STEP 0: Set up

1. `git status --porcelain`. If there are **tracked** changes (lines not starting with `??`), stop and ask the reviewer whether to stash them. Untracked files are fine.
2. `git fetch --prune origin`.
3. `gh auth status`. If it fails, tell the reviewer to run `! gh auth login` and stop.
4. Don't start the preview yet. It starts in STEP 2, after the PR branch is checked out.

Run every multi-line shell check through `bash <<'EOF' … EOF`. The reviewer's shell may be zsh, which doesn't split `$VAR` lists into words and fails on unmatched globs such as `--include=*.mdx`. macOS has no `timeout` command, so don't use it.

---

## STEP 1: Find the release PRs

```bash
gh pr list --state open --json number,title,headRefName,author,createdAt,url,isDraft \
  --jq '[.[] | select(.headRefName | startswith("docs/release-"))] | sort_by(.number)'
```

Only branches starting with `docs/release-` count. Skip other PRs, such as `cursor/*` or `claude/*` branches.

If `$ARGUMENTS` is a PR number, keep only that PR, even when its branch has another name.

If no PRs are left, say "No open release PRs to review." and stop.

Show them as a short table and ask which one to start with, defaulting to the oldest:

```
| # | PR | Release | Author |
|---|----|---------|--------|
| 1 | #5 | CL26.11.03 — Richer customer webhook & cashback API | galal-shaban |
| 2 | #6 | CL26.11.02 — Campaign status tabs, template filters… | mohamedihab-gb |
```

---

## STEP 2: Check out the PR and list its changes

1. `gh pr checkout {N}`, then `git pull --ff-only` so the branch matches the remote.
1b. **(Re)start the local preview on this branch.** `mint dev` picks up page edits but **not new image files** added after it started. A preview left running from `main` or another PR shows every new image as broken.
   - Stop any running preview: `pkill -f "mint dev"; lsof -ti :3000 | xargs kill 2>/dev/null`.
   - Start `mint dev --port 3000` with `run_in_background: true`.
   - Wait with a background `until` loop until one of the PR's new images returns 200, e.g. `until [ "$(curl -s -o /dev/null -w '%{http_code}' http://localhost:3000/{new image path})" = 200 ]; do sleep 2; done`. If the PR adds no images, wait for the home page instead.
   - If it hangs or fails, run `mint update` and try once more. If it still fails, tell the reviewer and continue without the preview: they can review the diff instead.
   - When you `git pull` new commits that add images later in the review, restart the preview the same way.
2. Read the PR body: `gh pr view {N} --json body,title`. Note everything under **"Needs your review"**, since those are the author's open questions.
3. Get the changed files: `git diff --name-status origin/main...HEAD`.
4. Group the files into **review items**. Each item is one thing the reviewer looks at on screen:
   - **One item per changed MDX page.** Images used by that page belong to the page item, not to separate items.
   - **One item for navigation** (`docs.json`) if pages were added, moved or removed.
   - **One item for the changelog** (`changelog/**`).
   - **One item for the API reference** (`api-reference/**`, OpenAPI files).
   - `llms.txt` and `internal/context/**` are not separate items. They are checked automatically in STEP 3.
   - Images that no page in the PR uses go into one "Unused images" item.
5. For each page item, work out:
   - **Local URL:** the file path without `.mdx`, e.g. `product-documentation/rewards-campaigns/stamps.mdx` → `http://localhost:3000/product-documentation/rewards-campaigns/stamps`.
   - **What changed:** read `git diff origin/main...HEAD -- {file}` and sum it up in **one short phrase**.

Show the list like this, with no more than one line per item:

```
PR #6 — CL26.11.02 · 5 changes

1. Stamps campaign (updated): new reward preview section
2. Campaign templates (updated): template filters added
3. Reward campaigns overview (new page)
4. Navigation: 1 page added under Rewards Campaigns
5. Changelog: November 2026 entry

Author's open questions: 2 (shown with the related item)
```

---

## STEP 3: Run automatic checks

Run these checks on the PR branch **before** the item-by-item review, and attach each problem to the item it belongs to. List problems in STEP 2's list with a `⚠` marker and one short reason, e.g. `1. Stamps campaign (updated): new reward preview section  ⚠ 1 missing image`.

| Check | How |
|---|---|
| **Broken internal links** | `mint broken-links > {scratchpad}/bl.txt 2>&1`, then grep it for the changed files and for the paths of pages this PR moved or removed. The repo already has broken links elsewhere, so report only matches for this PR. |
| **Mintlify validation** | `mint validate > {scratchpad}/val.txt 2>&1`, then grep it for the changed files. The repo already has validate errors in older pages and in local, gitignored `internal/` files. Only errors (`✗`) in files this PR changed block the merge. Mention the total count in one line, e.g. "17 errors elsewhere in the repo, none in this PR". |
| **Missing images** | For each changed MDX file, extract every image path (`![…](path)`, `src="path"`, `img="path"`). For a local path (`/images/...`), check the file exists on the branch: `test -f ".{path}"`. Paths are case-sensitive on the live site, so match the case exactly. |
| **External or expiring images** | Flag image URLs from `uploads.linear.app`, `downloads.intercomcdn.com`, `*.slack.com`, `ClickUp` attachments, or any host that needs a login. They show as broken images on the live site. |
| **Unused images** | Images added in this PR that no MDX file references. |
| **Leftover placeholders** | `grep -n "IMAGE PLACEHOLDER\|TODO" ` on the changed MDX files. |
| **HTML comments** | `grep -n "<!--"` on the changed MDX files. These break the Mintlify deploy, so they must become `{/* */}`. |
| **Navigation** | Every new MDX page appears in `docs.json`, and every path in `docs.json` points to a file that exists. Also check that no page in the PR is missing from `docs.json`. |
| **llms.txt** | Every new page has a line in `llms.txt`, and pages removed or renamed in this PR are not left in it. |
| **External links** | For links to sites other than docs.gameball.co, run `curl -s -o /dev/null -w "%{http_code}" -L --max-time 10 {url}`. Flag only 404 and 410 responses. Many sites block scripts, so treat other failures as "could not check", not as broken. |
| **Merge conflicts** | `gh pr view {N} --json mergeable,mergeStateStatus`. If the result is `CONFLICTING` or `BEHIND`, the PR needs updating from `main` before it can merge (see STEP 5). |

When a check can be fixed without a judgment call, offer the fix as part of that item's review. Examples: a missing `docs.json` entry, an HTML comment, or a missing `llms.txt` line.

---

## STEP 4: Review each item

Go through the items in order. For each one:

1. **Open the page** in the reviewer's browser: `open "{local URL}"`. For navigation, open the first new page so the sidebar is visible. For the changelog, open `http://localhost:3000/changelog/product-updates/{year}`. Wait a few seconds after a fresh `mint dev` start before opening.
2. **Say what to look at**, in 2–4 short lines:
   - what changed on the page
   - any `⚠` problems found in STEP 3, and the fix you suggest
   - the author's open questions that relate to this item
3. **Ask** with `AskUserQuestion`. The question must stand on its own, e.g. "Item 1 of 5, Stamps campaign: is this page ready?". Give these options:
   - **Approve**: the item is done.
   - **Request a change**: the reviewer describes the change, through "Other" or in a follow-up message.
   - **Skip for now**: come back to it after the other items.
4. **On a change request:**
   - Make the edit, following `product-doc.md`.
   - Show the diff (`git diff`).
   - The preview reloads by itself. Tell the reviewer to refresh the page if it doesn't.
   - Ask again: Approve / Request another change.
   - Once approved, commit to the PR branch with message `docs(review): {short description}`, ending with the attribution line from the system reminder, then `git push`.
   - After the edit, run STEP 3's checks again on that file.
5. Keep a running tally and show it in one line after each item, e.g. `Progress: 3 of 5 approved · 1 skipped`.

When the reviewer reaches the end, go back to any skipped items. The PR cannot merge until every item is approved and no blocking check is left. **Blocking** checks are: `mint validate` errors, missing images, expiring image URLs, HTML comments, `docs.json` paths with no file, and merge conflicts. Leftover TODOs and placeholders don't block, but ask the reviewer about each one.

If the reviewer wants to stop partway through, leave the PR open, say which items are still pending, and stop.

---

## STEP 5: Merge to main (this deploys)

1. **Bring the PR up to date with main.** Run `gh pr view {N} --json mergeable,mergeStateStatus` again.
   - `BEHIND`: run `git merge origin/main`, then `git push`.
   - `CONFLICTING`: run `git merge origin/main` and resolve the conflicts. The usual one is `changelog/product-updates/{year}.mdx`, where two releases added entries. Keep **both** entries, newest date first. Also keep both sides of `docs.json` and `llms.txt`. Show the resolved diff, get the reviewer's OK, then commit and `git push`.
   - After a merge from main, run `mint validate` and `mint broken-links` again.
2. **Show a summary and ask the final question:**

   ```
   PR #6 — CL26.11.02 is ready to merge
   - 5 items approved (2 edited during review)
   - Checks: no broken links · all images found · validate passed

   Merging publishes these changes to docs.gameball.co.
   ```

   Ask: "Merge PR #6 to main and deploy?", with the options Merge / Not yet.
3. On **Merge**:
   ```bash
   gh pr merge {N} --merge --delete-branch
   ```
   Use a merge commit to match the repo's history (`Merge pull request #N from …`). If branch protection blocks the merge, show the error and stop. Never add `--admin`.

---

## STEP 6: Confirm the deploy

1. `git checkout main && git pull --ff-only`, and note the merge commit SHA.
2. Watch the Mintlify deployment on the merge commit:
   ```bash
   gh api repos/gameballers/gameball-docs/commits/{SHA}/check-runs \
     --jq '.check_runs[] | select(.name | test("Mintlify")) | {status, conclusion, details_url}'
   ```
   Check again every 30 seconds, for up to 10 minutes (use `Monitor` with an until-loop, not `sleep`). If no Mintlify check run shows up, try `gh api .../commits/{SHA}/status` as well.
   - `success`: continue.
   - `failure`: show the `details_url`, say the live site is still on the previous version, and help the reviewer fix it in a new PR.
   - No result after 10 minutes: tell the reviewer to check the Mintlify dashboard, and continue.
3. **Check the live pages.** For each page added or changed in the PR, check that `https://docs.gameball.co/{path}` returns 200. A short delay after deploy is normal, so retry once after 60 seconds before you report a 404.
4. Report in one block:
   ```
   Deployed: PR #6 — CL26.11.02
   - Merge commit: abc1234
   - Mintlify deploy: success
   - Live pages: 3/3 returned 200
   ```

---

## STEP 7: Next PR

If there are more release PRs, ask: "Continue with PR #{next}?". If yes, go back to STEP 2. A PR that was just merged can make the next one `BEHIND` or `CONFLICTING`, which STEP 5 handles.

When you're done, `git checkout main` and stop `mint dev` if this command started it.
