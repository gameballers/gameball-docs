#!/usr/bin/env bash
# Fires before git commit/push. Reminds to update llms.txt and context files
# when relevant docs, API, or product files are staged.
# Always emit valid JSON so Cursor PreToolUse does not block the command.

set -u

input=$(cat || true)
cmd=$(printf '%s' "$input" | jq -r 'if .tool_input.command then .tool_input.command else empty end' 2>/dev/null || true)

# Only attach reminders for git commit or git push commands
if ! printf '%s' "$cmd" | grep -qE '(^|[[:space:]])git[[:space:]]+(commit|push)([[:space:]]|$)'; then
  printf '%s\n' '{"continue":true}'
  exit 0
fi

REPO="$(cd "$(dirname "$0")/.." && pwd)"
changed=$(git -C "$REPO" diff --staged --name-only 2>/dev/null || true)

reminders=""

# Check llms.txt: any new page, renamed URL, or removed page
if printf '%s' "$changed" | grep -qE '(docs\.json|\.mdx$)'; then
  reminders="llms.txt: does any staged change add a new page, rename a URL, or remove a page from navigation? If yes, update llms.txt first."
fi

# Check context files: any API, product-documentation, or tutorials change
if printf '%s' "$changed" | grep -qE '^(api-reference/|product-documentation/|tutorials/)'; then
  ctx="internal/context/ files: does any staged change add/modify an endpoint, parameter, product feature, or tutorial? If yes, run /update-context-files first."
  reminders="${reminders:+$reminders | }$ctx"
fi

if [ -n "$reminders" ]; then
  # Escape for JSON string
  escaped=$(printf '%s' "$reminders" | sed 's/\\/\\\\/g; s/"/\\"/g')
  printf '{"continue":true,"hookSpecificOutput":{"hookEventName":"PreToolUse","additionalContext":"Pre-commit checklist — %s"}}\n' "$escaped"
else
  printf '%s\n' '{"continue":true}'
fi

exit 0
