#!/bin/sh
# PMC8 Dashboard launcher for Linux / Raspberry Pi (64-bit).
# Day-to-day launcher. If PyQt6/pyserial are not installed yet, run the
# one-time setup_linux.sh first.
set -u

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd) || exit 1
cd "$SCRIPT_DIR" || exit 1

APP="PMC8_Dashboard.py"
if [ ! -f "$APP" ]; then
    echo "PMC8 Dashboard was not found in this folder."
    echo "Expected: $SCRIPT_DIR/$APP"
    echo "Restore the complete PMC8 Dashboard folder or re-extract the ZIP."
    exit 1
fi

# Find a Python 3 interpreter.
PYTHON_CMD=""
if command -v python3 >/dev/null 2>&1; then
    PYTHON_CMD="python3"
elif command -v python >/dev/null 2>&1; then
    PYTHON_CMD="python"
fi
if [ -z "$PYTHON_CMD" ]; then
    echo "Python 3 was not found. Run ./setup_linux.sh first, or install Python 3."
    exit 1
fi

# Require PyQt6 + pyserial; if missing, send the user to the one-time setup.
if ! "$PYTHON_CMD" -c "import PyQt6, serial" >/dev/null 2>&1; then
    echo "PyQt6 and/or pyserial are not installed yet."
    echo "Run the one-time setup first:"
    echo "    ./setup_linux.sh"
    echo "(On Raspberry Pi OS you can also: sudo apt install python3-pyqt6 python3-serial)"
    exit 1
fi

# Raspberry Pi OS (Bookworm) defaults to Wayland, but the Qt Wayland platform
# plugin isn't installed with python3-pyqt6, so Qt prints "Could not find the Qt
# platform plugin 'wayland'" and falls back on its own. Pin the well-tested
# X11/XWayland plugin (xcb) for a clean launch. Honour an explicit override.
: "${QT_QPA_PLATFORM:=xcb}"
export QT_QPA_PLATFORM

exec "$PYTHON_CMD" "$APP"
