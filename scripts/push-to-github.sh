#!/usr/bin/env bash
set -euo pipefail

REMOTE_URL="${1:-https://github.com/hwillGIT/architecture-of-deep-reading.git}"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Run this script from the repository root." >&2
  exit 1
fi

if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$REMOTE_URL"
else
  git remote add origin "$REMOTE_URL"
fi

echo "Pushing main to $REMOTE_URL"
git push -u origin main
