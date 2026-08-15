#!/usr/bin/env sh
# Install common development dependencies (stub)
# Run: scripts/setup/install-deps.sh
set -eu

echo "Checking for package managers..."
if command -v apt-get >/dev/null 2>&1; then
  echo "Detected apt-get. To install dev packages run: sudo apt-get update && sudo apt-get install -y shellcheck shfmt git"
elif command -v brew >/dev/null 2>&1; then
  echo "Detected brew. To install dev packages run: brew install shellcheck shfmt git"
elif command -v pacman >/dev/null 2>&1; then
  echo "Detected pacman. To install dev packages run: sudo pacman -Syu shellcheck shfmt git"
else
  echo "No recognized system package manager detected. Please install: shellcheck, shfmt, git"
fi

# Node / Python helpers (optional)
if command -v npm >/dev/null 2>&1; then
  echo "npm available — use npm to install project JS dependencies if present (package.json)."
fi
if command -v pip >/dev/null 2>&1; then
  echo "pip available — use pip to install Python dependencies if present (requirements.txt or pyproject.toml)."
fi

echo "Done."
