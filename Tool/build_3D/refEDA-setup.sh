#!/bin/bash
# Generated Date: 2026-09-07 17:15:26

# reset locale to the default locale
unset LC_ALL LANG LC_CTYPE LC_COLLATE LC_NUMERIC LC_TIME LC_MONETARY LC_MESSAGES
export LC_ALL=C
export LANG=C

# resolve the absolute directory path of this script file
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export refEDA_INSTALL_DIR="$SCRIPT_DIR"
export REFEDA_ROOT="$SCRIPT_DIR"   # read by Automated-Testcases/Makefile

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$SCRIPT_DIR/lib"

chmod +x "$SCRIPT_DIR/scripts" -R

# The GUI terminal (VTE) needs termcap data; without it Enter/Backspace don't work there.
if [ ! -f /etc/termcap ] && [ ! -f "/usr/share/vte/termcap-0.0/${TERM:-xterm}" ]; then
    echo "WARNING: no termcap found -- the GUI terminal will not accept input. Fix with:"
    echo "  sudo sh -c 'infocmp -C xterm > /etc/termcap'"
fi

echo "refEDA Setup Complete using installation directory: $refEDA_INSTALL_DIR"
