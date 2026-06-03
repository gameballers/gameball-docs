# /accuracy-report — GBKnowledge Bot Accuracy Report

Generate a report measuring how often the GBKnowledge bot answers questions correctly vs. incorrectly, based on ClickUp task outcomes in the Help Center x Gbknowledge Bot list.

---

## CONFIGURATION

- **ClickUp List ID**: `901522626283`
- **Bot wrong**: tasks with status `complete` (article was updated because the bot's answer was missing or incorrect)
- **Bot right**: tasks with status `reasoning issue` (no article change needed — bot was correct, the issue was a reasoning/clarity gap)
- **Pending**: tasks with status `needs update` (still being processed)
- **Accuracy formula**: `reasoning_issue / (complete + reasoning_issue) × 100`

**Optional argument**: pass a number of days to filter by recency (e.g. `/accuracy-report 30` = last 30 days). Default = all time.

---

## STEP 1: Fetch All Tasks from ClickUp

Call `clickup_filter_tasks` with:
- `list_ids: ["901522626283"]`
- `subtasks: false`
- `include_closed: true`

If a day argument was provided, also pass `date_created_from` as today minus N days (in YYYY-MM-DD format).

Paginate through all results if needed (increment `page` until no more tasks are returned).

---

## STEP 2: Count Tasks by Status

From the results, count **parent tasks only** (tasks with no `parent` field) by status:

| Status | Variable |
|--------|----------|
| `complete` | `wrong_count` |
| `reasoning issue` | `right_count` |
| `needs update` | `pending_count` |

Ignore all other statuses (including `new question`) and all subtasks.

---

## STEP 3: Calculate Metrics

```
total_resolved = wrong_count + right_count
accuracy = (right_count / total_resolved) × 100   [round to 1 decimal place]
```

If `total_resolved` is 0, report "No resolved questions yet." and stop.

---

## STEP 4: Display In-Session Report

Print the following to the user:

```
GBKnowledge Bot Accuracy Report
As of: [today's date]
[Period: last N days | All time]

Resolved questions: [total_resolved]
  ✓ Bot was right (reasoning issue): [right_count] — [accuracy]%
  ✗ Bot needed correction (article updated): [wrong_count] — [100 - accuracy]%

In progress (needs update): [pending_count]

Accuracy rate: [accuracy]%
```

---

## STEP 5: Post to Slack

Ask the user: "Which Slack channel should I post this report to?"

Once confirmed, post the same report content to that channel using `slack_send_message`.

Format the Slack message as:

```
*GBKnowledge Bot Accuracy Report*
_As of [date] | [Period]_

Resolved questions: *[total_resolved]*
  ✅ Bot was right: *[right_count]* ([accuracy]%)
  ❌ Bot needed correction: *[wrong_count]* ([100-accuracy]%)

⏳ In progress: *[pending_count]*

*Accuracy rate: [accuracy]%*
```

---

## STEP 6: Update ClickUp Document

After posting to Slack, update the running accuracy report document in ClickUp.

- **Document ID**: `3a40m-114715`
- **Page ID**: `3a40m-114055`
- **Workspace ID**: `3477524`

### 6a. Fetch monthly stats

Run a second `clickup_filter_tasks` query for the **current calendar month only**:
- Same parameters as Step 1, but add `date_created_from` = first day of current month (YYYY-MM-DD) and `date_created_to` = today (YYYY-MM-DD)
- Count the same statuses into: `month_right`, `month_wrong`, `month_pending`
- Calculate: `month_total_resolved = month_right + month_wrong`, `month_accuracy = round(month_right / month_total_resolved * 100, 1)` (skip if 0)

### 6b. Read then rebuild the page

1. Read the current page using `clickup_get_document_pages` (content_format: `text/md`)
2. Extract any existing **monthly sections** (everything under `## Monthly Breakdown`)
3. Rebuild the entire page with `clickup_update_document_page` using this structure:

```
# GBKnowledge Bot Accuracy Report

This document tracks how accurately the GBKnowledge bot answers questions in #product-questions. It is updated automatically on the 1st of every month.

**How accuracy is measured:**
- ✅ **Bot was right** = question resolved as a reasoning/clarity issue — no article update needed (`reasoning issue` status)
- ❌ **Bot needed correction** = article was updated because the bot's answer was missing or incomplete (`complete` status)
- **Accuracy rate** = Bot was right / Total resolved × 100

---

## Overall Performance

_Last updated: [today's date] | All time_

| Metric | Count | % |
|--------|-------|---|
| ✅ Bot was right (reasoning issue) | [right_count] | [accuracy]% |
| ❌ Bot needed correction (article updated) | [wrong_count] | [100-accuracy]% |
| **Total resolved** | **[total_resolved]** | |
| ⏳ In progress (needs update) | [pending_count] | |

**Accuracy rate: [accuracy]%**

---

## Monthly Breakdown

[all previous monthly sections preserved here, then append:]

### [Month Year]

_[first day of month] – [today's date]_

| Metric | Count | % |
|--------|-------|---|
| ✅ Bot was right | [month_right] | [month_accuracy]% |
| ❌ Bot needed correction | [month_wrong] | [100-month_accuracy]% |
| **Total resolved** | **[month_total_resolved]** | |
| ⏳ In progress | [month_pending] | |

**Monthly accuracy: [month_accuracy]%**

---

[previous monthly sections below]
```

If `month_total_resolved` is 0 for the current month, write "No questions resolved this month." instead of the table.

---

## STEP 7: Offer to Schedule

After updating the ClickUp document, ask the user:

"Would you like me to set up a monthly scheduled report? I can post this automatically to [channel] and update the ClickUp doc on the 1st of every month using `/schedule`."

If yes, use the `schedule` skill to create a monthly cron that runs this report silently. The scheduled prompt must include the ClickUp list ID, the Slack channel ID, the ClickUp document ID and page ID, and instructions to run without asking questions.

---

## CRITICAL RULES

- Count **parent tasks only** — never count subtasks in the metrics.
- Never count `needs update` tasks as resolved.
- If `total_resolved` is 0, do not divide — report the gap instead.
- Always show the period (all time or last N days) clearly in the report.
- Do not push to docs or modify any files — this is a read-only reporting command.
