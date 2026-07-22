# nyc-ai-devtools

## Use skills from this repo in a VS Code workspace

This repository contains multiple skill/instruction bundles in different subdirectories.

### 1) Include the repo (or selected subfolders) in your workspace

Use one of these approaches:

1. Open the repository root as your VS Code folder to make all skills available.
2. In a multi-root workspace, add whichever subfolders you want skills from.

### 2) Keep each subproject's instructions in scope

Some subprojects define routing and usage via AGENTS files. Keep those folders in the workspace when you want their behavior.

- [launch-checklist/AGENTS.md](launch-checklist/AGENTS.md)
- [tfvc-macos/AGENTS.md](tfvc-macos/AGENTS.md)

### 3) Skill and agent inventory

Current agent/skill files in this repo:

- [accessibility-skill/accessibility-auditor.agent.md](accessibility-skill/accessibility-auditor.agent.md)
- [tfvc-macos/skills/tfvc-first-time-setup.agent.md](tfvc-macos/skills/tfvc-first-time-setup.agent.md)
- [tfvc-macos/skills/tfvc-workspace-from-server-url.agent.md](tfvc-macos/skills/tfvc-workspace-from-server-url.agent.md)
- [tfvc-macos/skills/tfvc-dev-workflow.agent.md](tfvc-macos/skills/tfvc-dev-workflow.agent.md)

### 4) How to invoke them

Use intent-based prompts that name the domain/task. For example:

1. "Use the accessibility auditor agent for this URL."
2. "Use the TFVC first-time setup skill for my Mac."
3. "Use the TFVC dev workflow skill to sync and create a safe changeset."

### 5) Subproject-specific instructions

This top-level README is intentionally general. For domain-specific setup and operating instructions, use each subproject's docs:

- [tfvc-macos/README.md](tfvc-macos/README.md)
- [launch-checklist/README.md](launch-checklist/README.md)

The folder-level docs and AGENTS files are the source of truth for each toolset.
