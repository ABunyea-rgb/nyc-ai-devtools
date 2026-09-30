#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
powershell_script="$(cygpath -w "$script_dir/tfvc.ps1")"

export MSYS_NO_PATHCONV=1
exec powershell.exe -NoLogo -NoProfile -ExecutionPolicy Bypass -File "$powershell_script" "$@"