# Fires before git commit/push. Reminds to update llms.txt and context files
# when relevant docs, API, or product files are staged.
# Always emit valid JSON so Cursor PreToolUse does not block the command.

$inputJson = [Console]::In.ReadToEnd()
$cmd = ""
try {
  $parsed = $inputJson | ConvertFrom-Json
  if ($parsed.tool_input.command) { $cmd = [string]$parsed.tool_input.command }
} catch { }

if ($cmd -notmatch '(^|\s)git\s+(commit|push)(\s|$)') {
  Write-Output '{"continue":true}'
  exit 0
}

$repo = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path

$changed = @()
try {
  $changed = @(git -C $repo diff --staged --name-only 2>$null)
} catch { }

$reminders = @()

if ($changed -match '(docs\.json|\.mdx$)') {
  $reminders += "llms.txt: does any staged change add a new page, rename a URL, or remove a page from navigation? If yes, update llms.txt first."
}

if ($changed -match '^(api-reference/|product-documentation/|tutorials/)') {
  $reminders += "internal/context/ files: does any staged change add/modify an endpoint, parameter, product feature, or tutorial? If yes, run /update-context-files first."
}

if ($reminders.Count -gt 0) {
  $text = "Pre-commit checklist — " + ($reminders -join " | ")
  $payload = [ordered]@{
    continue = $true
    hookSpecificOutput = [ordered]@{
      hookEventName = "PreToolUse"
      additionalContext = $text
    }
  }
  Write-Output ($payload | ConvertTo-Json -Compress -Depth 5)
} else {
  Write-Output '{"continue":true}'
}

exit 0
