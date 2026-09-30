# TFVC Windows Starter Pack

This folder documents the Visual Studio workflow for Team Foundation Version Control (TFVC) on Windows and includes optional PowerShell helpers for users who want the `tf.exe` command line.

## Quick start

1. Install Visual Studio 2022 (or a supported Visual Studio version).
2. Read [docs/QUICKSTART.md](docs/QUICKSTART.md) and connect to Azure DevOps from Team Explorer.
3. Configure a workspace, map the TFVC server path to a local folder, and choose **Map & Get**.
4. Use Visual Studio's **Pending Changes** page to review and check in changes.

The PowerShell scripts are optional. They use the `tf.exe` installed with Visual Studio and the account you signed into Visual Studio with. Git Bash launchers are included for Windows users who prefer Bash; they delegate to those PowerShell scripts.

## Included files

- `AGENTS.md`: guidance and skill routing for AI coding agents.
- `docs/QUICKSTART.md`: short Visual Studio setup.
- `docs/TFVC_SETUP_WINDOWS.md`: setup, daily workflow, CLI, and troubleshooting.
- `scripts/tfvc.ps1`: forwards TFVC commands to Visual Studio's `tf.exe`.
- `scripts/bootstrap-tfvc-workspace.ps1`: creates a new local workspace, maps a server path, and gets latest.
- `scripts/tfvc.sh` and `scripts/bootstrap-tfvc-workspace.sh`: Git Bash launchers for the PowerShell scripts.
- `skills/tfvc-first-time-setup.agent.md`: first-time setup workflow.
- `skills/tfvc-dev-workflow.agent.md`: daily TFVC operations.

## Microsoft references

- [Set up TFVC on your dev machine](https://learn.microsoft.com/en-us/azure/devops/repos/tfvc/set-up-team-foundation-version-control-your-dev-machine?view=azure-devops)
- [Connect to a project from Visual Studio](https://learn.microsoft.com/en-us/azure/devops/organizations/projects/connect-to-projects?view=azure-devops)
- [Check in your work](https://learn.microsoft.com/en-us/azure/devops/repos/tfvc/check-your-work-team-codebase?view=azure-devops)