# PMC-Eight ESP8266 serial recovery v1.1

Wes McDonald's full-chip recovery package for PMC-Eight controllers fitted with the **ESP8266** Wi-Fi module. Firmware: **2.2.40-env**. This is not the ESP32 recovery tool.

[Download the package and checksum](https://github.com/ExploreScientific/OpenGOTO-Community-Projects/releases/tag/esp8266-serial-flash-v1.1). The ZIP is copied unchanged from the [upstream release](https://github.com/wesmcd6/pmc8-tools/releases/tag/esp8266-serial-flash-v1.1).

Read `SERIAL_FLASH_USER_GUIDE.txt` inside the ZIP before proceeding. This procedure requires USB, opening the controller and fitting a jumper; it writes the full 2 MB Wi-Fi chip and clears saved Wi-Fi network settings. Confirm the module type as directed by the guide. Use Dashboard v0.2.7 or later to restore home-network configuration afterwards.

Supported host platforms: Windows, macOS, Linux and Raspberry Pi; Python 3 is required. Follow the platform launcher and dependency instructions in the guide. Remove the extracted portable-tool folder to uninstall. This mirror verifies package integrity and preserves the upstream instructions; no physical-mount flash was performed.
