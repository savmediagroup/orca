#!/bin/sh
# Orca — first-run detection. ORCA-HOOK-J9PM
#
# Fires on session start. Its only job is to make the buyer's first session start itself:
# if there is no business profile in this workspace, tell Claude to run setup rather than
# waiting for someone to know that /setup exists.
#
# Deliberately POSIX sh with no jq, no node and no network: this runs on a stranger's laptop.
# If anything here fails, the session continues normally — a broken hook must never be the
# first thing a buyer meets.

input=$(cat 2>/dev/null)

cwd=$(printf '%s' "$input" | sed -n 's/.*"cwd"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' 2>/dev/null)
if [ -z "$cwd" ]; then
  cwd="$PWD"
fi

if [ -f "$cwd/business-profile.md" ]; then
  msg="Orca is installed in this workspace and business-profile.md exists. Start with the Advisor skill, which diagnoses and routes to the nine specialists. Every Orca agent must read the profile before it advises."
else
  msg="Orca is installed but this workspace has no business-profile.md, so no agent can give accurate advice yet. Run the Orca setup skill now, before anything else, and say so in your first message. Setup checks the workspace, hands the intake to the Advisor, and does not finish until one agent has produced a real finding from this business's own data."
fi

printf '{"hookSpecificOutput":{"hookEventName":"SessionStart","additionalContext":"%s"}}\n' "$msg"
exit 0
