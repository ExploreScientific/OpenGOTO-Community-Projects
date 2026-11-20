#!/bin/sh
# PMC8 Dashboard setup for Linux / Raspberry Pi (64-bit).
# One-time preparation: installs PyQt6 + pyserial, adds you to the serial
# (dialout) group, then launches the dashboard. For normal day-to-day launches
# afterward, use run_dashboard_linux.sh instead.
set -u

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd) || exit 1
APP_DIR="$SCRIPT_DIR"

# Support being run either from inside PMC8_Dashboard_Linux or from dist_bundle.
if [ -d "$SCRIPT_DIR/PMC8_Dashboard_Linux" ]; then
    APP_DIR="$SCRIPT_DIR/PMC8_Dashboard_Linux"
fi

LAUNCHER="$APP_DIR/run_dashboard_linux.sh"
REQ_FILE="$APP_DIR/requirements.txt"

printf '\nPMC8 Dashboard Linux / Raspberry Pi setup\n'
printf 'App folder: %s\n\n' "$APP_DIR"

# Make the launcher and this script executable (the ZIP preserves this, but a
# re-copied folder may not).
if [ -f "$LAUNCHER" ]; then
    chmod +x "$LAUNCHER" 2>/dev/null || true
fi
chmod +x "$SCRIPT_DIR/setup_linux.sh" 2>/dev/null || true

# Verify required application files before doing anything else.
REQUIRED_PY_FILES="PMC8_Dashboard.py PMC8_Configurator.py upload_dialog.py p1_loader.py network_management.py"
for file in $REQUIRED_PY_FILES; do
    if [ ! -f "$APP_DIR/$file" ]; then
        echo "Missing required application file: $APP_DIR/$file"
        echo "Restore the complete PMC8 Dashboard folder or re-extract the ZIP."
        exit 1
    fi
done

# Find a Python 3 interpreter.
PYTHON_CMD=""
if command -v python3 >/dev/null 2>&1; then
    PYTHON_CMD="python3"
elif command -v python >/dev/null 2>&1; then
    PYTHON_CMD="python"
fi
if [ -z "$PYTHON_CMD" ]; then
    echo "Python 3 was not found."
    echo "On Raspberry Pi OS / Debian:  sudo apt install python3"
    exit 1
fi
echo "Using Python command: $PYTHON_CMD"

# Install PyQt6 + pyserial only if they aren't already importable.
if "$PYTHON_CMD" -c "import PyQt6, serial" >/dev/null 2>&1; then
    echo "PyQt6 and pyserial are already installed."
elif command -v apt-get >/dev/null 2>&1; then
    echo "Installing PyQt6 and pyserial via apt (recommended on Raspberry Pi OS)."
    echo "You may be prompted for your password."
    if sudo apt-get update && sudo apt-get install -y python3-pyqt6 python3-serial; then
        echo "System packages installed."
    else
        echo "apt install failed; trying pip instead..."
        "$PYTHON_CMD" -m pip install -r "$REQ_FILE" || {
            echo ""
            echo "Could not install PyQt6/pyserial. Install them manually with:"
            echo "  sudo apt install python3-pyqt6 python3-serial"
            exit 1
        }
    fi
else
    echo "apt not found; installing with pip..."
    "$PYTHON_CMD" -m pip install -r "$REQ_FILE" || {
        echo ""
        echo "Could not install the requirements with pip."
        exit 1
    }
fi

# Add the current user to the 'dialout' group so the serial port opens without
# root. This takes effect after the next login.
CURRENT_USER=$(id -un 2>/dev/null || true)
if [ -n "$CURRENT_USER" ]; then
    if id -nG "$CURRENT_USER" 2>/dev/null | tr ' ' '\n' | grep -qx dialout; then
        echo "User '$CURRENT_USER' is already in the 'dialout' group."
    elif command -v usermod >/dev/null 2>&1; then
        echo "Adding '$CURRENT_USER' to the 'dialout' group for serial-port access..."
        if sudo usermod -aG dialout "$CURRENT_USER"; then
            echo "Added -- but you must REBOOT for it to take effect."
            echo "A log out / log back in is NOT enough on current Ubuntu/GNOME:"
            echo "the systemd user session survives logout and keeps the old"
            echo "group membership, so the serial port still fails to open."
            echo "(Verified on a clean Ubuntu 24.04.4 desktop, Aug 2026.)"
            echo "To use it in this terminal right now without rebooting:"
            echo "  newgrp dialout"
        else
            echo "Could not change groups automatically. Do it later with:"
            echo "  sudo usermod -aG dialout $CURRENT_USER"
        fi
    fi
fi

echo ""
echo "Setup complete. Launching PMC8 Dashboard..."
echo ""

cd "$APP_DIR" || exit 1
if [ -f "$LAUNCHER" ]; then
    exec "$LAUNCHER"          # the launcher pins QT_QPA_PLATFORM=xcb itself
fi
# Direct-launch fallback: pin the X11/XWayland Qt plugin so a Wayland Pi session
# doesn't warn about the missing 'wayland' plugin. Honour an explicit override.
: "${QT_QPA_PLATFORM:=xcb}"
export QT_QPA_PLATFORM
exec "$PYTHON_CMD" PMC8_Dashboard.py
