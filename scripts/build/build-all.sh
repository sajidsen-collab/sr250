#!/usr/bin/env sh
# Build orchestrator: calls per-subproject build scripts if present
# Run: scripts/build/build-all.sh
set -eu

echo "Starting build-all"

# Example: if firmware has a build script
if [ -x "./firmware/build.sh" ]; then
  echo "Building firmware..."
  ./firmware/build.sh
else
  echo "No firmware/build.sh found or not executable — skipping firmware build"
fi

# Mobile
if [ -x "./mobile/build.sh" ]; then
  echo "Building mobile..."
  ./mobile/build.sh
else
  echo "No mobile/build.sh found — skipping mobile build"
fi

# Tools
if [ -x "./tools/build.sh" ]; then
  echo "Building tools..."
  ./tools/build.sh
else
  echo "No tools/build.sh found — skipping tools build"
fi

# Add additional project-specific build steps here

echo "Build-all finished"
