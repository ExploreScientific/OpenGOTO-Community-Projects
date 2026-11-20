# PMC-Eight browser tools

Community tools by Wes McDonald, mirrored from [web_download](https://github.com/wesmcd6/web_download/tree/25b1a5991bd6600ea24752ba414036b9daeaa542) at commit `25b1a5991bd6600ea24752ba414036b9daeaa542` on 2026-11-20. The source is MIT licensed; the original LICENSE and THIRD_PARTY_NOTICES are included unchanged.

[Download the standalone package](https://github.com/ExploreScientific/OpenGOTO-Community-Projects/releases/tag/pmc8-browser-tools-20261120).

Use desktop Chrome, Edge or Opera for USB/Web Serial. Install Python 3 if needed, extract the package, open a terminal in its `PMC8-Browser-Tools` folder and run `python -m http.server 8000`. Open http://localhost:8000/ in the browser. Close other applications using the mount's serial port. To stop, press Ctrl+C in the terminal. To uninstall, remove the extracted folder.

The tools read/change mount settings, provide a command console and upload Propeller firmware over USB. ESP32/ESP8266 Wi-Fi firmware is a separate update path. Read the included upstream README and protocol documentation before issuing write commands. Firmware and settings operations change the connected mount.

This is a source snapshot, not a newly assigned upstream software version. Original source files are unmodified. The public upstream snapshot does not contain the test directory mentioned in its README; those tests cannot be run from this distribution. JavaScript syntax and local-page rendering are checked for the mirror; physical-mount operation is not retested.
