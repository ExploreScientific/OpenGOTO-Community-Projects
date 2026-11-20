# PMC8 Dashboard

Wes McDonald's community utility for PMC-Eight configuration, connection testing, firmware upload and network setup. Current mirrored release: **v0.2.7**, refreshed 2026-11-20.

[Download Windows, macOS or Linux packages](https://github.com/ExploreScientific/OpenGOTO-Community-Projects/releases/tag/pmc8-dashboard-v0.2.7).

v0.2.7 fixes ESP8266 Get WiFi Address and Configure for Home Network when firmware 2.2.40-env or later is running Envision fast mode. Linux/Raspberry Pi guidance uses distribution packages and a reboot after changing serial-port group membership.

`source/windows`, `source/macos` and `source/linux` contain the corresponding release contents. `docs` contains the current manuals; `installers` retains platform launch helpers. Follow the README inside your platform ZIP. Python/PyQt6 prerequisites are described there. To remove the portable application, remove its extracted folder; separately installed dependencies are managed by your operating system.

The platform ZIPs are unmodified upstream downloads. [Upstream release](https://github.com/wesmcd6/pmc8-tools/releases/tag/pmc8-dashboard-v0.2.7). Preserve the contributor's notices and attribution. This mirror has passed archive, checksum and Python syntax checks; no physical-mount testing was performed for this refresh.
