# OpenGOTO Community Projects

This public repository is intended to be the staging and index location for OpenGOTO community developed projects that support Explore Scientific PMC-Eight telescope systems.

Projects may include application executables, installation programs, documentation, or complete source code, depending on what the contributor provides and permits Explore Scientific to redistribute.

## Purpose

The goal of this repository is to provide a visible, organized, and reviewable place for community tools before they are announced, mirrored, packaged, or referenced from Explore Scientific support pages.

This repository is not a replacement for the official PMC-Eight firmware, ASCOM driver, INDI driver, or ExploreStars Envision repositories. It is for community-developed tools and utilities that may be useful to PMC-Eight users.

## Repository Layout

Each community project lives in its own folder under `projects/`.

Recommended project layout:

| Path | Purpose |
| --- | --- |
| `projects/<project-name>/README.md` | Project overview, attribution, status, and user-facing summary. |
| `projects/<project-name>/docs/` | User documentation, installation notes, screenshots, and release notes. |
| `projects/<project-name>/installers/` | Installer packages, executable archives, or links to release artifacts. |
| `projects/<project-name>/source/` | Source code, if the contributor authorizes public source release. |
| `projects/<project-name>/checksums/` | SHA-256 checksum files for binaries, installers, and archives. |

This keeps all OpenGOTO community projects together while still giving each project a clean, independent structure.

## Current Projects

| Project | Contributor | Status | Repository |
| --- | --- | --- | --- |
| PMC-Eight ALPACA Server | Prosaic Alto / upstream maintainer nigeldun | Current upstream release v1.2.2 mirrored for Windows, Linux, and macOS | `projects/PMC-Eight-ALPACA-Server` |
| PMC8 Tools | Wes McDonald | Public multi-branch tool collection indexed; selected release mirrors published | `projects/PMC8-Tools` |
| PMC8 Dashboard | Wes McDonald | Source, documentation, notices, launch helpers, and v0.2.0 release published | `projects/PMC8-Dashboard` |
| Spiral Search Bridge | Wes McDonald | Documentation, notices, checksums, and v2.0 release mirrored | `projects/Spiral-Search-Bridge` |

## Latest PMC-Eight ALPACA Server Mirror

Current mirrored upstream version: `v1.2.2`

Upstream release:

https://github.com/nigeldun/ES_PMC8_ALPACA/releases/tag/v1.2.2

Explore Scientific mirror release:

https://github.com/ExploreScientific/OpenGOTO-Community-Projects/releases/tag/pmc-eight-alpaca-server-v1.2.2

Mirror date: 2026-06-17

Included release artifacts:

| Platform | Artifact |
| --- | --- |
| Windows x64 | `publish-win-x64.zip` |
| Linux x64 | `publish-linux-x64.zip` |
| Linux ARM64 | `publish-linux-arm64.zip` |
| macOS x64 | `publish-macos-x64.zip` |
| macOS ARM64 | `publish-macos-arm64.zip` |

Verification hashes are listed in `projects/PMC-Eight-ALPACA-Server/checksums/SHA256SUMS.md`.

## Firmware Update Notice

The current PMC-Eight ESP32 Wi-Fi firmware update packages mirrored here are ES4.2.3. Use the OTA package first when the ESP32 already supports OTA updates, and use the serial-flash package only as the fallback path for missing, corrupted, or too-old ESP32 firmware.

- OTA update: https://github.com/ExploreScientific/OpenGOTO-Community-Projects/releases/download/pmc8-esp32-current/pmc8-esp32-ota.zip
- Serial-flash fallback: https://github.com/ExploreScientific/OpenGOTO-Community-Projects/releases/download/pmc8-esp32-current/pmc8-esp32-serial-flash.zip

## Publication Requirements

Before any project is published here, the following information should be captured:

1. Contributor name or preferred public attribution.
2. Project description and intended user audience.
3. Redistribution permission for binaries, installers, documentation, and source code.
4. License terms for any source code.
5. Version number or release date for the submitted files.
6. Supported operating systems and hardware.
7. Installation and uninstall instructions.
8. Basic operating instructions.
9. Known limitations, dependencies, and safety notes.
10. SHA-256 checksums for distributed binaries or installer packages.

## Review Flow

Community projects should be reviewed by Explore Scientific before public announcement. The review should confirm that the files are complete, clearly documented, properly attributed, and do not include private credentials, private firmware source, unpublished internal files, or unrelated copyrighted material.

## Public Support Notice

Unless a project is explicitly identified as officially supported by Explore Scientific, community projects should be treated as community contributions. Explore Scientific may host or reference them as a convenience to PMC-Eight users while preserving appropriate contributor credit.
