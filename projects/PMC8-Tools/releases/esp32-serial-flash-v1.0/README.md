# PMC-Eight ESP32 Serial Flash v1.0 / Firmware ES4.2.3

This release mirrors Wes McDonald's public PMC8 ESP32 Serial Flash v1.0 package for Explore Scientific PMC-Eight users.

Upstream release:

https://github.com/wesmcd6/pmc8-tools/releases/tag/esp32-serial-flash-v1.0

## Package

| Package | Upstream branch | Use |
| --- | --- | --- |
| `pmc8-esp32-serial-flash-v1.0-ES4.2.3.zip` | `esp32-serial-flash` | Fallback full serial flash path when OTA is unavailable. |

## Customer Guidance

Use the OTA package first when possible. Use the serial-flash package only when OTA is unavailable, the ESP32 has corrupted or missing firmware, or the installed firmware is too old to support OTA.
