# PMC8 Tools

PMC8 Tools is Wes McDonald's public tool collection for Explore Scientific PMC-Eight users.

The upstream repository is organized as a multi-branch tool hub rather than as one source tree:

https://github.com/wesmcd6/pmc8-tools

Each tool lives on its own branch, and user-facing packages are published as GitHub Releases. This OpenGOTO entry documents the collection and mirrors selected release assets where appropriate for Explore Scientific users.

## Project Status

Status: Upstream tool collection identified; current release index documented; selected OpenGOTO release mirrors published; public source/documentation snapshot refreshed from Wes McDonald's public branches on 2026-08-14 with contributor permission previously reported by Explore Scientific.

## Current Upstream Releases

| Tool | Upstream branch | Upstream release | OpenGOTO mirror |
| --- | --- | --- | --- |
| PMC8 Home Network Config | `home-network-config` | https://github.com/wesmcd6/pmc8-tools/releases/tag/home-network-config-v1.0 | https://github.com/ExploreScientific/OpenGOTO-Community-Projects/releases/tag/home-network-config-v1.0 |
| Spiral Search Bridge | `spiral-search` | https://github.com/wesmcd6/pmc8-tools/releases/tag/spiralsearch-v2.0 | https://github.com/ExploreScientific/OpenGOTO-Community-Projects/releases/tag/spiralsearch-v2.0 |
| PMC8 Dashboard | `pmc8-dashboard` | https://github.com/wesmcd6/pmc8-tools/releases/tag/pmc8-dashboard-v0.2.6 | https://github.com/ExploreScientific/OpenGOTO-Community-Projects/releases/tag/pmc8-dashboard-v0.2.6 |
| PMC-Eight UFCT | `pmc8-ufct` | https://github.com/wesmcd6/pmc8-tools/releases/tag/pmc8-ufct-v2.1 | Official Explore Scientific UFCT release is maintained separately: https://github.com/ExploreScientific/PMC-Eight-UFCT/releases/latest |
| ESP32 OTA Update ES4.2.30 | `esp32-ota` | https://github.com/wesmcd6/pmc8-tools/releases/tag/esp32-ota-v2.3 | https://github.com/ExploreScientific/OpenGOTO-Community-Projects/releases/tag/esp32-ota-v2.3 |
| ESP32 Serial Flash ES4.2.3 | `esp32-serial-flash` | https://github.com/wesmcd6/pmc8-tools/releases/tag/esp32-serial-flash-v1.0 | https://github.com/ExploreScientific/OpenGOTO-Community-Projects/releases/tag/esp32-serial-flash-v1.0 |

## Tool Notes

- PMC8 Home Network Config is a Windows utility that configures ESP32, ESP8266, or RN-131 PMC-Eight WiFi modules to join a home network.
- ESP32 OTA Update ES4.2.30 is the recommended update path for PMC-Eight ESP32 Wi-Fi firmware when OTA is already supported.
- ESP32 Serial Flash ES4.2.3 is the fallback package for ESP32 modules with missing, corrupted, or too-old firmware for OTA.
- Spiral Search Bridge is a cross-platform ASCOM Alpaca spiral-search automation tool.
- PMC8 Dashboard has its own OpenGOTO project folder because source, documentation, notices, launch helpers, and release ZIPs were imported into the Explore Scientific OpenGOTO structure.
- Envision release assets in Wes's tool repo are not mirrored here as community tools; Explore Scientific maintains the public Envision release-only repository separately.

## Attribution

Contributor: Wes McDonald

Hosted by Explore Scientific as an OpenGOTO community index for PMC-Eight users.
