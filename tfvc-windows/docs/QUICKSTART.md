# TFVC Quickstart (Windows)

Visual Studio is the recommended Windows client. You do not need the PowerShell scripts to use TFVC.

## Connect and get the code

1. Install Visual Studio and sign in with the account that has access to the Azure DevOps organization.
2. In Visual Studio, open **View > Team Explorer**. In Team Explorer, choose **Manage Connections > Connect to a Project**.
3. Select the Azure DevOps organization/server and project, then choose **Connect**.
4. On the TFVC project page, choose **Configure your workspace**. Select a local folder and map the server path you need.
5. Choose **Map & Get** to download the code.

## Work and check in

Open **Team Explorer > Home > Pending Changes** (Ctrl+0, P). Review **Included Changes** and **Excluded Changes**, enter a useful comment, associate a work item if required by your team, then choose **Check In**. The successful check-in creates a changeset.

## Publish from pitcrew-dcwp

Use this workflow to copy completed changes from the Git mirror into the mapped TFVC workspace. Run these commands from **Git Bash**. Stop the local stack first so temporary overlays are reverted.

Note: these commands should only be run against the `main` branch.

From the mirror repository, preview the copy:

```bash
cd /c/Users/[path to repo base]/pitcrew-dcwp
npm run publish:dry-run
```

Review the report path and the added, updated, and deleted file list. Continue only if the target paths and entire delta are expected. If the preview is unexpectedly large or reports overlay/conflict warnings, stop and investigate; do not use `--force` just to bypass a warning.

When the preview is correct, run the commands below. `publish:apply` copies the changes into the mapped TFVC workspace. `publish:checkin-note` prints a check-in comment template; it does not copy files or check them in:

```bash
npm run publish:apply
npm run publish:checkin-note
```

Then inspect TFVC pending changes and check in from Visual Studio:

```bash
export TFVC_TOOLS=/c/Users/[path to repo]/nyc-ai-devtools/tfvc-windows/scripts
cd /c/Users/[path to tfvc workspace]/DEV-OTI
bash "$TFVC_TOOLS/tfvc.sh" status . /recursive
```

Refresh **Team Explorer > Home > Pending Changes**, promote any intended detected files, and verify that only the expected changes are included. Enter the check-in comment and select **Check In**. `publish:apply` copies files locally; it does not create the server changeset.

For command-line use, see [TFVC_SETUP_WINDOWS.md](TFVC_SETUP_WINDOWS.md). For more detail, see Microsoft's [Visual Studio TFVC setup guide](https://learn.microsoft.com/en-us/azure/devops/repos/tfvc/set-up-team-foundation-version-control-your-dev-machine?view=azure-devops).
