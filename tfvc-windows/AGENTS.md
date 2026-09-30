# Instructions for AI Agents

Assist with TFVC setup and development workflows on Windows. Prefer Visual Studio and Team Explorer for sign-in, workspace setup, review, and check-in. PowerShell and Git Bash wrappers are optional command-line interfaces to the `tf.exe` installed with Visual Studio; the Bash scripts delegate to PowerShell.

## Available skills

- `skills/tfvc-first-time-setup.agent.md`
- `skills/tfvc-dev-workflow.agent.md`

## Skill routing

1. Use `skills/tfvc-first-time-setup.agent.md` when setting up Visual Studio access or a TFVC workspace for the first time.
2. Use `skills/tfvc-dev-workflow.agent.md` for sync, status, add/edit, shelve, undo, or check-in tasks in an existing workspace.

## Guardrails

- Never request or store passwords, personal access tokens, or other credentials in scripts or environment files. Let Visual Studio manage authentication.
- Inspect pending changes before check-in, undo, or shelving; check in only the intended files.
- Do not run recursive undo or delete a workspace unless explicitly requested.
- Prefer an existing workspace when one is already mapped. The bootstrap script creates a new workspace and should not be used to replace an existing one.