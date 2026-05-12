# PMC-Eight ALPACA Server Install and Run Guide

## Overview

The PMC-Eight ALPACA Server is a community-contributed Windows x64 package that provides Alpaca-compatible network access for Explore Scientific PMC-Eight telescope mounts.

Contributor: Prosaic Alto

Hosted by Explore Scientific as an OpenGOTO community project.

## Package Location

The expanded package is stored in this repository at:

`projects/PMC-Eight-ALPACA-Server/installers/publish-win-x64/`

For normal users, the recommended download method is the GitHub Release package rather than cloning the repository.

Current release:

https://github.com/ExploreScientific/OpenGOTO-Community-Projects/releases/tag/pmc-eight-alpaca-server-2025.06.22

## System Requirements

- Windows x64 PC.
- Network or serial access to the PMC-Eight mount, depending on the connection method configured in the server.
- A client application that can communicate with Alpaca telescope devices.
- The full contents of the `publish-win-x64` package folder must remain together.

## Installation

1. Download the current PMC-Eight ALPACA Server release package from the GitHub Releases area.
2. Extract the downloaded package to a local folder, for example:

   `C:\ExploreScientific\PMC-Eight-ALPACA-Server\`

3. Confirm that `ASCOM.ES_PMC8.exe` is present in the extracted folder.
4. Keep the supporting files and folders with the executable. Do not move `ASCOM.ES_PMC8.exe` by itself.

## Running the Server

1. Open the extracted package folder.
2. Run `ASCOM.ES_PMC8.exe`.
3. If Windows displays a security prompt, allow the application only if the file came from the official Explore Scientific GitHub repository.
4. If Windows Firewall asks for permission, allow access on the network type used for your telescope-control setup.
5. Configure the mount connection settings in the server interface.
6. Start or enable the Alpaca server function.

## Basic Verification

1. Confirm that the server starts without an error dialog.
2. Confirm that the PMC-Eight mount connection can be selected and opened.
3. From an Alpaca-compatible client, search for or manually configure the telescope device exposed by the server.
4. Verify basic telescope status before commanding motion.
5. Test movement commands carefully at low risk, with the telescope in a safe position.

## Safety Notes

- Verify mount location, time, alignment state, and tracking state before issuing GoTo or motion commands.
- Keep physical access to mount power while testing.
- Do not test slews where the telescope can strike the tripod, pier, roof, mount, cables, or other equipment.
- Treat this as a community-contributed package unless and until Explore Scientific announces a different support status.

## Checksums

SHA-256 checksums for the expanded package files are listed in:

`projects/PMC-Eight-ALPACA-Server/checksums/SHA256SUMS.md`
