#!/usr/bin/env bash
# Fires before git commit/push. Reminds to update llms.txt and context files
# when relevant docs, API, or product files are staged.

input=$(cat)
cmd=$(echo "$input" | jq -r 'if .tool_input.command then .tool_input.command else "" end' 2>/dev/null)

# Only act on git commit or git push commands
if ! echo "$cmd" | grep -qE '^git (commit|push)'; then
  exit 0
fi

REPO="$(cd "$(dirname "$0")/.." && pwd)"
changed=$(git -C "$REPO" diff --staged --name-only 2>/dev/null)

reminders=""

# Check llms.txt: any new page, renamed URL, or removed page
if echo "$changed" | grep -qE '(docs\.json|\.mdx$)'; then
  reminders="llms.txt: does any staged change add a new page, rename a URL, or remove a page from navigation? If yes, update llms.txt first."
fi

# Check context files: any API, product-documentation, or tutorials change
if echo "$changed" | grep -qE '^(api-reference/|product-documentation/|tutorials/)'; then
  ctx="internal/context/ files: does any staged change add/modify an endpoint, parameter, product feature, or tutorial? If yes, run /update-context-files first."
  reminders="${reminders:+$reminders | }$ctx"
fi

if [ -n "$reminders" ]; then
  printf '{"hookSpecificOutput":{"hookEventName":"PreToolUse","additionalContext":"Pre-commit checklist — %s"}}' "$reminders"
fi
