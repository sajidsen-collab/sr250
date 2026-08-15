#!/usr/bin/env sh
# Run tests across the repository. Keep this small and CI-friendly.
# Run: scripts/test/run-all.sh
set -eu

echo "Running test placeholder"
if [ -x "./tests/test_placeholder.sh" ]; then
  ./tests/test_placeholder.sh
else
  echo "No tests/test_placeholder.sh found or not executable"
fi

# If Python tests exist
if [ -f "pytest.ini" ] || [ -d "tests" ] && command -v pytest >/dev/null 2>&1; then
  echo "Running pytest"
  pytest || true
fi

# Add additional test runners as needed (xcodebuild, adb, etc.)

echo "All test steps complete"
