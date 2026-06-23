#!/usr/bin/env bash

set -euo pipefail

SANDBOX_DIR="$HOME/agentless_work"

if ! command -v bwrap >/dev/null 2>&1; then
    echo "Error: bubblewrap is not installed."
    echo "Install it with: sudo apt install bubblewrap"
    exit 1
fi

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "Error: current directory is not inside a Git repository."
    echo "Run this script from the repository you want Agentless to work on."
    exit 1
fi

REPO_DIR="$(git rev-parse --show-toplevel)"

mkdir -p "$SANDBOX_DIR"

if [ ! -d "$SANDBOX_DIR" ]; then
    echo "Error: failed to create sandbox directory: $SANDBOX_DIR"
    exit 1
fi

echo
echo "=================================="
echo " Agentless Sandbox"
echo "=================================="
echo "Repository : $REPO_DIR"
echo "Writable   : $SANDBOX_DIR"
echo "Outside    : read-only"
echo "Tmp        : isolated tmpfs"
echo "=================================="
echo

cd "$REPO_DIR"

exec bwrap \
    --ro-bind / / \
    --dev-bind /dev /dev \
    --proc /proc \
    --tmpfs /tmp \
    --bind "$REPO_DIR" "$SANDBOX_DIR" \
    --chdir "$SANDBOX_DIR" \
    --setenv AGENTLESS_SANDBOX "1" \
    --setenv AGENTLESS_REPO "$REPO_DIR" \
    --setenv PS1 "[agentless-sandbox] \w $ " \
    /bin/bash
