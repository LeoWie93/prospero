#!/bin/bash

if [ $1 == "--help" ]; then
    echo "Updates the prospero repo with the current host config"
    echo " "
    echo "update [argument]"
    echo " "
    echo "options:"
    echo "xfce                      specific for xfce ~/.config/xfce files"
    exit 0
fi


echo "Updating repo files"

./update/aliases.sh

if [ -f ~/.config/rofi/config.rasi ]; then
    echo "backup rofi config"
    cat ~/.config/rofi/config.rasi > ./setup/rofi-setup/config.rasi
fi

if [ 1 == "xfce" ]; then
    echo "backup xfce config"
    cp -r ~/.config/xfce4/xfconf ./setup
    cp -r ~/.config/xfce4/terminal ./setup
fi
