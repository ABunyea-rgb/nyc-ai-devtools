# TFVC Quickstart (macOS)

Purpose: fast path only. For complete explanations, manual command variants, and troubleshooting, use `TFVC_SETUP_MAC.md`.

## 1) Run this setup block

```zsh
# Required
export TFVC_COLLECTION_URL="https://dev.azure.com/<org>"
export TFVC_SERVER_PATH="$/<team-project-path>"

# Optional defaults
export TFVC_ROOT_DIR="$HOME/tfvc-workspace"
export TFVC_MAPPED_DIR="$TFVC_ROOT_DIR/src"
export TFVC_WORKSPACE_NAME="TFVC-Mac"
export TFVC_JAVA_HOME="/Library/Java/JavaVirtualMachines/<x64-jdk>.jdk/Contents/Home"
export TFVC_USERNAME="<azure-devops-username>"
export TFVC_PASSWORD="<azure-devops-password-or-pat>"
# Alternative single variable format (overrides USERNAME/PASSWORD):
# export TFVC_LOGIN="<azure-devops-username>,<azure-devops-password-or-pat>"
chmod +x ./scripts/tfvc-wrapper.sh ./scripts/bootstrap-tfvc-workspace.sh
./scripts/bootstrap-tfvc-workspace.sh
```

## 2) Validate with 3 commands

```zsh
./scripts/tfvc-wrapper.sh workspaces -collection:"$TFVC_COLLECTION_URL"
```

```zsh
./scripts/tfvc-wrapper.sh workfold -collection:"$TFVC_COLLECTION_URL" -workspace:"$TFVC_WORKSPACE_NAME"
```

```zsh
cd "$TFVC_MAPPED_DIR"
../scripts/tfvc-wrapper.sh status . -recursive
```

For full detail and troubleshooting, read `TFVC_SETUP_MAC.md`.
