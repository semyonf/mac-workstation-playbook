#!/bin/bash

if ! pkgutil --pkg-info=com.apple.pkg.CLTools_Executables; then
    touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
    clt_label=$(softwareupdate -l | grep -B 1 -E 'Command Line Tools' | awk -F'*' '/^\*/ {print $2}' | sed 's/^ Label: //' | grep -iE '[0-9|.]' | sort | tail -n1)
    softwareupdate -i "$clt_label"
    rm /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
fi
