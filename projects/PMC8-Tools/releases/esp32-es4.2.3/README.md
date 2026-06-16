# PMC-Eight ESP32 Firmware ES4.2.3

This release mirrors Wes McDonald's public PMC8 Tools ESP32 update packages for Explore Scientific PMC-Eight users.

Upstream repository:

https://github.com/wesmcd6/pmc8-tools

## Packages

| Package | Upstream branch | Upstream commit | Use |
| --- | --- | --- | --- |
| `pmc8-esp32-ota-20260615-8a0910f.zip` | `esp32-ota` | `c6c455c` | Recommended OTA update path when the ESP32 already supports OTA. |
| `pmc8-esp32-serial-flash-20260615-4f17190.zip` | `esp32-serial-flash` | `cdc3b5d` | Fallback full serial flash path when OTA is not possible. |

Stable current-download aliases for website links:

- `pmc8-esp32-ota.zip`: https://github.com/ExploreScientific/OpenGOTO-Community-Projects/releases/download/pmc8-esp32-current/pmc8-esp32-ota.zip
- `pmc8-esp32-serial-flash.zip`: https://github.com/ExploreScientific/OpenGOTO-Community-Projects/releases/download/pmc8-esp32-current/pmc8-esp32-serial-flash.zip

## Verified Firmware

Both upstream manifests identify the ESP32 firmware as:

`ES4.2.3 (v2.5)`

The OTA `esp-at.bin` payload was also scanned and contains the embedded firmware version string `ES4.2.3`.

The serial-flash package includes `pmc8_normal_firmware.binary`, sourced upstream from `pmc8-firmware@084bda9` as `20A02.1.8.3.bt.binary`. Its SHA256 hash matches the private Explore Scientific `PMC-Eight-Firmware-Source` repository binary `bin/20A02.1.8.3.bt.binary`.

## Customer Guidance

Use the OTA package first when possible. Use the serial-flash package only when OTA is unavailable, the ESP32 has corrupted or missing firmware, or the installed firmware is too old to support OTA.
