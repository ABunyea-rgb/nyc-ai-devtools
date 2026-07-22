#!/bin/zsh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="${TFVC_ROOT_DIR:-$HOME/tfvc-workspace}"
MAPPED_DIR="${TFVC_MAPPED_DIR:-$ROOT_DIR/src}"
COLLECTION_URL="${TFVC_COLLECTION_URL:-}"
SERVER_PATH="${TFVC_SERVER_PATH:-}"
WRAPPER="${TFVC_WRAPPER_PATH:-$SCRIPT_DIR/tfvc-wrapper.sh}"
WORKSPACE_NAME="${1:-${TFVC_WORKSPACE_NAME:-TFVC-Mac}}"

if [[ -z "$COLLECTION_URL" || -z "$SERVER_PATH" ]]; then
	print -u2 "Missing required environment variables:"
	print -u2 "  TFVC_COLLECTION_URL (example: https://dev.azure.com/<org>)"
	print -u2 "  TFVC_SERVER_PATH (example: $/<team-project-path>)"
	exit 1
fi

if [[ ! -x "$WRAPPER" ]]; then
	print -u2 "TFVC wrapper not found or not executable: $WRAPPER"
	print -u2 "Set TFVC_WRAPPER_PATH or run chmod +x on scripts/tfvc-wrapper.sh"
	exit 1
fi

mkdir -p "$MAPPED_DIR"

if ! "$WRAPPER" workspaces -collection:"$COLLECTION_URL" | grep -Fq "$WORKSPACE_NAME"; then
	"$WRAPPER" workspace -new -collection:"$COLLECTION_URL" -location:server -noprompt "$WORKSPACE_NAME"
fi

"$WRAPPER" workfold -map -collection:"$COLLECTION_URL" -workspace:"$WORKSPACE_NAME" "$SERVER_PATH" "$MAPPED_DIR"

cd "$MAPPED_DIR"
"$WRAPPER" get . -recursive

print -- "TFVC workspace '$WORKSPACE_NAME' mapped $SERVER_PATH to $MAPPED_DIR"