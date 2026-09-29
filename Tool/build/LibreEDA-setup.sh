#!/bin/bash
# Generated Date: 2026-09-07 17:15:26

# reset locale to the default locale
unset LC_ALL LANG LC_CTYPE LC_COLLATE LC_NUMERIC LC_TIME LC_MONETARY LC_MESSAGES
export LC_ALL=C
export LANG=C

# resolve the absolute directory path of this script file
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export LibreEDA_INSTALL_DIR="$SCRIPT_DIR"
export LIBREEDA_ROOT="$SCRIPT_DIR"

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$SCRIPT_DIR/lib"

chmod +x "$SCRIPT_DIR/scripts" -R

echo "LibreEDA Setup Complete using installation directory: $LibreEDA_INSTALL_DIR"