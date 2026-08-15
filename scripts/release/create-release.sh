#!/usr/bin/env sh
# Skeleton release script. Uses GitHub CLI (gh) if available.
# Run: scripts/release/create-release.sh <version> [--notes "release notes"]
set -eu

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <version> [--notes \"release notes\"]"
  exit 2
fi

VERSION="$1"
shift || true

NOTES="" 
while [ "$#" -gt 0 ]; do
  case "$1" in
    --notes)
      shift
      NOTES="$1"
      shift || true
      ;;
    *)
      shift || true
      ;;
  esac
done

if command -v gh >/dev/null 2>&1; then
  echo "Creating GitHub release $VERSION"
  if [ -n "$NOTES" ]; then
    gh release create "$VERSION" -t "$VERSION" -n "$NOTES"
  else
    gh release create "$VERSION" -t "$VERSION"
  fi
else
  echo "gh CLI not found. To create a release manually, tag the commit and push:" 
  echo "  git tag -a $VERSION -m \"Release $VERSION\" && git push origin $VERSION"
fi
