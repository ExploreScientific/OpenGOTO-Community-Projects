# PMC8 Dashboard

PMC8 Dashboard is a community utility by Wes McDonald for working with Explore Scientific PMC-Eight mount control systems. This OpenGOTO Community project area publishes the Dashboard source, user documentation, platform launch helpers, redistribution notices, and release checksums under the Explore Scientific GitHub organization.

## Status

- Source import completed: May 25, 2026
- Imported from: Wes McDonald's current PMC8 Dashboard release packages and `wesmcd6/pmc8-tools` Dashboard branch review
- Current Explore Scientific release status: release packaging pending

## Project Layout

- `source/windows/` contains the current Windows Dashboard source package, including the pure-Python Propeller loader used by the Windows upload path.
- `source/macos/` contains the current macOS Dashboard source package, including the macOS Propeller uploader path and bundled `p1load` helper.
- `docs/` contains the Dashboard user manual.
- `installers/` contains platform launch helpers and distribution notes.
- `checksums/` contains SHA256 checksums for the imported source and reference release packages.

## Notes

The Windows and macOS Dashboard packages are intentionally preserved separately because their firmware upload paths differ. Future maintenance can consolidate common code after Wes confirms a preferred upstream structure.
