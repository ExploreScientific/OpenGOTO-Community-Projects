# PMC8 Dashboard Source

The Dashboard source is organized by platform to preserve the exact behavior of the current release packages.

## Windows

`source/windows/` contains the Windows Dashboard Python source and `p1_loader.py`, a pure-Python Propeller firmware loader used by the Windows upload workflow.

## macOS

`source/macos/` contains the macOS Dashboard Python source, `propeller_uploader.py`, and the bundled `p1load_package` helper used by the macOS upload workflow.

## Maintenance Guidance

When Wes publishes a Dashboard update, compare both platform release packages and refresh the matching platform source directory. If the platform packages are unified upstream later, this directory can be simplified.
