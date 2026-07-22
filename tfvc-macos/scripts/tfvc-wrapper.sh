#!/bin/zsh

set -euo pipefail

TEE_ROOT="${TFVC_TEE_ROOT:-$HOME/TEE-CLC-14.139.0}"
TF_REAL="$TEE_ROOT/tf"

if [[ ! -x "$TF_REAL" ]]; then
  print -u2 "TFVC wrapper error: tf was not found at $TF_REAL"
  print -u2 "Set TFVC_TEE_ROOT to your Team Explorer Everywhere folder or install TEE there."
  exit 1
fi

is_x64_java_home() {
  local java_bin="$1/bin/java"

  if [[ ! -x "$java_bin" ]]; then
    return 1
  fi

  local archs
  archs="$(lipo -archs "$java_bin" 2>/dev/null || true)"
  [[ "$archs" == *x86_64* ]]
}

find_java_home() {
  if [[ -n "${TFVC_JAVA_HOME:-}" ]] && is_x64_java_home "$TFVC_JAVA_HOME"; then
    print -- "$TFVC_JAVA_HOME"
    return 0
  fi

  local candidate

  candidate="$(/usr/libexec/java_home -v 11 -a x86_64 2>/dev/null || true)"
  if [[ -n "$candidate" ]] && is_x64_java_home "$candidate"; then
    print -- "$candidate"
    return 0
  fi

  candidate="$(/usr/libexec/java_home -v 1.8 -a x86_64 2>/dev/null || true)"
  if [[ -n "$candidate" ]] && is_x64_java_home "$candidate"; then
    print -- "$candidate"
    return 0
  fi

  return 1
}

JAVA_HOME_X64="$(find_java_home || true)"

if [[ -z "$JAVA_HOME_X64" ]]; then
  print -u2 "TFVC wrapper error: Team Explorer Everywhere needs an x86_64 JDK on Apple Silicon."
  print -u2 "Install JDK 11 or 8 for Intel/x64, then set TFVC_JAVA_HOME to that JDK's Home path."
  print -u2 "Example: export TFVC_JAVA_HOME=/Library/Java/JavaVirtualMachines/<jdk>.jdk/Contents/Home"
  exit 1
fi

export JAVA_HOME="$JAVA_HOME_X64"
export PATH="$JAVA_HOME/bin:$PATH"

has_login_arg() {
  local arg
  for arg in "$@"; do
    if [[ "$arg" == -login:* || "$arg" == /login:* ]]; then
      return 0
    fi
  done

  return 1
}

has_noprompt_arg() {
  local arg
  for arg in "$@"; do
    if [[ "$arg" == -noprompt || "$arg" == /noprompt ]]; then
      return 0
    fi
  done

  return 1
}

build_login_value() {
  if [[ -n "${TFVC_LOGIN:-}" ]]; then
    print -- "$TFVC_LOGIN"
    return 0
  fi

  if [[ -n "${TFVC_USERNAME:-}" && -n "${TFVC_PASSWORD:-}" ]]; then
    print -- "${TFVC_USERNAME},${TFVC_PASSWORD}"
    return 0
  fi

  return 1
}

tf_args=("$@")
login_value="$(build_login_value || true)"

if [[ -n "$login_value" ]] && ! has_login_arg "${tf_args[@]}"; then
  tf_args+=("-login:${login_value}")

  # When credentials are injected from env vars, avoid interactive fallback prompts.
  if ! has_noprompt_arg "${tf_args[@]}"; then
    tf_args+=("-noprompt")
  fi
fi

exec arch -x86_64 "$TF_REAL" "${tf_args[@]}"