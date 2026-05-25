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
| PMC-Eight ALPACA Server | Prosaic Alto | Package imported; redistribution permission received; Explore Scientific review complete | `projects/PMC-Eight-ALPACA-Server` |
| PMC8 Dashboard | Wes McDonald | Project scaffold created; redistribution and source-publication approval received; import pending | `projects/PMC8-Dashboard` |

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
