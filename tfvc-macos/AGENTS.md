# Instructions for AI Agents

You are assisting with TFVC setup and workspace provisioning on macOS.

## Available skills

- skills/tfvc-first-time-setup.agent.md
- skills/tfvc-workspace-from-server-url.agent.md
- skills/tfvc-dev-workflow.agent.md

## Skill routing

1. Use skills/tfvc-first-time-setup.agent.md when the user is setting up TFVC on a Mac for the first time.
2. Use skills/tfvc-workspace-from-server-url.agent.md when the user already has TFVC tools and wants a new mapped workspace from a collection URL and server path.
3. Use skills/tfvc-dev-workflow.agent.md for normal development version control actions in an existing mapped workspace (sync/pull, status, add/rename, check-in/changeset, shelve, undo).

## Required inputs

For first-time setup:
- Collection URL (https://dev.azure.com/<org>)
- TFVC server path ($/<team-project-path>)

For workspace-from-URL setup:
- Collection URL (https://dev.azure.com/<org>)
- TFVC server path ($/<team-project-path>)
- Optional workspace name and local path overrides

## Local references

- README.md
- docs/QUICKSTART.md
- docs/TFVC_SETUP_MAC.md
- scripts/tfvc-wrapper.sh
- scripts/bootstrap-tfvc-workspace.sh

## Guardrails

- Do not run destructive TFVC commands unless explicitly requested.
- Reuse an existing workspace mapping by default; only replace mappings if the user asks.
- Validate that server paths begin with $/ before provisioning.
