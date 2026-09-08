#!/bin/bash
# Generated Date: 2026-09-07 17:15:26

# reset locale to the default locale
unset LC_ALL LANG LC_CTYPE LC_COLLATE LC_NUMERIC LC_TIME LC_MONETARY LC_MESSAGES
export LC_ALL=C
export LANG=C

if [ -z "$pathviz_INSTALL_DIR" ]; then \

    echo "ERROR: pathviz Installation Directory is NOT specified. Please set the pathviz_INSTALL_DIR shell variable to the Installation path."; 

else
    export LD_PRELOAD=$pathviz_INSTALL_DIR/freetype-2.6.5/INSTALLED/lib/libfreetype.so.6;
    
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$pathviz_INSTALL_DIR/lib
    
    echo "pathviz Setup Complete.";
fi
