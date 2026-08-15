# Convenience Makefile for common operations
.PHONY: setup build test release fmt

setup:
	@echo "Running setup script"
	sh scripts/setup/install-deps.sh

build:
	@echo "Running build-all"
	sh scripts/build/build-all.sh

test:
	@echo "Running tests"
	sh scripts/test/run-all.sh

release:
	@echo "Create release: make release VERSION=vX.Y.Z"
	@if [ -z "$(VERSION)" ]; then \
		echo "Please provide VERSION=vX.Y.Z"; exit 1; \
	fi
	sh scripts/release/create-release.sh $(VERSION)
