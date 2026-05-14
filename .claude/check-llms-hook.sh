#!/usr/bin/env bash
# Fires before git commit/push. If docs.json or .mdx files are staged,
# injects a reminder to check whether llms.txt needs updating.

input=$(cat)
cmd=$(echo "$input" | jq -r 'if .tool_input.command then .tool_input.command else "" end' 2>/dev/null)

# Only act on git commit or git push commands
if ! echo "$cmd" | grep -qE '^git (commit|push)'; then
  exit 0
fi

REPO="$(cd "$(dirname "$0")/.." && pwd)"
changed=$(git -C "$REPO" diff --staged --name-only 2>/dev/null)

if echo "$changed" | grep -qE '(docs\.json|\.mdx$)'; then
  printf '{"hookSpecificOutput":{"hookEventName":"PreToolUse","additionalContext":"Staged changes include docs.json or .mdx files. Before committing, check whether llms.txt needs updating: does any staged change add a new page, rename a URL, or remove a page from navigation? If yes, update llms.txt first."}}'
fi
