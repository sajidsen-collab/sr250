# SR250

SR250 is a multi-part project containing firmware, hardware designs, tools, and supporting documentation for the SR250 device. This README gives a quick orientation to the repository, how it is organized, and how to get started.

## Repository structure

- assets/  
  Project images, logos and other binary assets used by docs or presentations.

- docs/  
  Project documentation, design notes, and user guides.

- firmware/  
  Firmware source code and subprojects:
  - firmware/bootloader/ — bootloader sources and build instructions.
  - firmware/device/ — device firmware sources (application code, drivers).

- hardware/  
  Hardware design files (schematics, PCB layouts, BOMs).

- mobile/  
  Mobile applications or companion apps for SR250 (Android/iOS sources).

- protocol/  
  Protocol specification(s) used by the device (wire format, messages, examples).

- scripts/  
  Utility scripts for building, flashing, testing, or automation.

- simulator/  
  Simulator or emulation code used to validate firmware or protocols.

- tests/  
  Unit, integration, and system tests.

- tools/  
  Developer tools, helpers, and CLI utilities.

Other repository files:
- CONTRIBUTING.md — contribution guidelines.
- CHANGELOG.md — release notes and changelog.
- SECURITY.md — security policy for reporting vulnerabilities.
- LICENSE — project license.

## Getting started

1. Clone the repo:
   git clone https://github.com/sajidsen-collab/sr250.git

2. See docs/ for detailed setup and build instructions. For firmware builds, check firmware/README (or the relevant subfolder README) for toolchain and flashing instructions.

3. Run tests:
   - See tests/ for test runner instructions.

## Development workflow

- Follow CONTRIBUTING.md for branching, PRs, code style, and commit message guidelines.
- Use the scripts/ folder for common automation (build, lint, flash).
- Add tests to tests/ when adding new functionality.

## Contributing

We welcome contributions. Please read CONTRIBUTING.md before opening issues or pull requests.

## Security

Report security issues following the guidelines in SECURITY.md.

## License

This project is licensed under the terms in LICENSE.

## Changelog

See CHANGELOG.md for release notes and major changes.
