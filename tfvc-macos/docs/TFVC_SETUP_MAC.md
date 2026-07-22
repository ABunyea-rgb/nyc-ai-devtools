# TFVC Setup on macOS

Purpose: canonical setup and troubleshooting reference for Team Foundation Version Control (TFVC) on macOS.

If you only need the shortest working path, use `QUICKSTART.md`.

## Prerequisites

1. Rosetta 2 installed (Apple Silicon only)
2. Team Explorer Everywhere installed
3. x64 JDK 11 or 8 installed
4. VS Code AutoTFS extension installed (optional)

## TFVC model for Git users

- TFVC is workspace-based and server-centric.
- A workspace maps a server path to a local path.
- `get` syncs latest from server.
- `checkin` publishes pending changes.
- `shelve` uploads pending changes without check-in.

Quick mapping from Git:

- `clone` -> create workspace + map + first `get`
- `pull` -> `tf get`
- `status` -> `tf status`
- `add` -> `tf add`
- `mv` -> `tf rename`
- restore/reset file -> `tf undo`
- commit/push -> `tf checkin`

## Java setup

Set your x64 JDK path:

```zsh
export TFVC_JAVA_HOME="/Library/Java/JavaVirtualMachines/<x64-jdk>.jdk/Contents/Home"
```

## Required environment variables

Before bootstrap, set:

```zsh
export TFVC_COLLECTION_URL="https://dev.azure.com/<org>"
export TFVC_SERVER_PATH="$/<team-project-path>"
```

Optional:

```zsh
export TFVC_ROOT_DIR="$HOME/tfvc-workspace"
export TFVC_MAPPED_DIR="$TFVC_ROOT_DIR/src"
export TFVC_WORKSPACE_NAME="TFVC-Mac"
export TFVC_WRAPPER_PATH="/absolute/path/to/scripts/tfvc-wrapper.sh"
export TFVC_USERNAME="<azure-devops-username>"
export TFVC_PASSWORD="<azure-devops-password-or-pat>"
# Alternative single variable format (overrides USERNAME/PASSWORD):
# export TFVC_LOGIN="<azure-devops-username>,<azure-devops-password-or-pat>"
```

Credential behavior in this package:

- If `TFVC_LOGIN` is set, wrapper passes `-login:<value>` to `tf`.
- Else if `TFVC_USERNAME` and `TFVC_PASSWORD` are both set, wrapper passes `-login:<username>,<password>`.
- When wrapper injects login, it also adds `-noprompt` unless you already supplied it.
- Explicit CLI `-login:` or `/login:` arguments take precedence over env vars.

## Bootstrap

```zsh
chmod +x ./scripts/tfvc-wrapper.sh ./scripts/bootstrap-tfvc-workspace.sh
./scripts/bootstrap-tfvc-workspace.sh
```

The script creates/reuses the workspace, maps server to local, and runs recursive `get`.

## Manual equivalents

```zsh
./scripts/tfvc-wrapper.sh workspace -new -collection:"$TFVC_COLLECTION_URL" -location:server -noprompt "$TFVC_WORKSPACE_NAME"
./scripts/tfvc-wrapper.sh workfold -map -collection:"$TFVC_COLLECTION_URL" -workspace:"$TFVC_WORKSPACE_NAME" "$TFVC_SERVER_PATH" "$TFVC_MAPPED_DIR"
cd "$TFVC_MAPPED_DIR"
./scripts/tfvc-wrapper.sh get . -recursive
```

## Daily workflow

```zsh
cd "$TFVC_MAPPED_DIR"
./scripts/tfvc-wrapper.sh status . -recursive
./scripts/tfvc-wrapper.sh get . -recursive
```

## Daily command cheat sheet

Run these from your mapped workspace directory unless noted.

```zsh
# Show pending changes
./scripts/tfvc-wrapper.sh status . -recursive

# Pull latest from server (TFVC equivalent of pull)
./scripts/tfvc-wrapper.sh get . -recursive

# Add a new file
./scripts/tfvc-wrapper.sh add <path>

# Rename or move a file/folder
./scripts/tfvc-wrapper.sh rename <old-path> <new-path>

# Revert a file
./scripts/tfvc-wrapper.sh undo <path>

# Create a changeset (TFVC equivalent of push)
./scripts/tfvc-wrapper.sh checkin -recursive -comment:"<comment>" .

# Shelve work instead of checking in
./scripts/tfvc-wrapper.sh shelve -recursive -comment:"<comment>" <shelveset-name> .
```

Safe habits:

- Run `status` before `checkin`, `undo`, or `shelve`.
- Use meaningful `checkin` comments.
- Avoid bulk undo (`undo . -recursive`) unless you explicitly intend to discard all pending changes.

Check in:

```zsh
./scripts/tfvc-wrapper.sh checkin -recursive -comment:"<comment>" .
```

Shelve instead:

```zsh
./scripts/tfvc-wrapper.sh shelve -recursive -comment:"<comment>" <shelveset-name> .
```

## Troubleshooting

- Wrapper says tf not found: set `TFVC_TEE_ROOT` to your TEE install directory.
- Java arch error on Apple Silicon: confirm `TFVC_JAVA_HOME` points to an x64 JDK.
- Auth prompts repeat: confirm `TFVC_USERNAME` and `TFVC_PASSWORD` (or `TFVC_LOGIN`) are set, then verify the credential is valid for the target org.
