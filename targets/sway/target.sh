#!/usr/bin/env bash

setup(){
    command -v paru >/dev/null 2>&1
    if [[ $? -ne 0 ]]; then
        echo "Command {paru} is required but was not found."
        exit 1
    fi

    sudo pacman -S waybar sway swayidle swaylock wf-recorder xdg-desktop-portal xdg-desktop-portal-wlr

    paru -S wlogout wlprop xremap
}

remove(){
    echo "not implemented"
}

