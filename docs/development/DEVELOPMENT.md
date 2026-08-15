This repository contains multiple subprojects (firmware, hardware, mobile, protocol, simulator, tools).

Development scripts and CI were added on branch `add-scripts-and-placeholders` to provide a scaffold for building and testing.

Files added (summary):
- scripts/setup/install-deps.sh — helper to list installation steps for common dev tools
- scripts/build/build-all.sh — orchestrator for builds
- scripts/test/run-all.sh — orchestrator for tests
- scripts/release/create-release.sh — skeleton for creating releases (uses gh CLI if available)
- Makefile — convenience targets: setup, build, test, release
- .github/workflows/ci.yml — simple CI pipeline running lint, build, test
- tests/test_placeholder.sh — minimal test so CI jobs run

How to use locally:
- make setup
- make build
- make test

Notes:
- The scripts are intentionally lightweight and act as placeholders. Replace per-subproject steps with real build/test commands.
- If you want CI to run additional checks (shfmt, unit tests, platform-specific builds), tell me which subprojects to target and I will extend the workflow.
