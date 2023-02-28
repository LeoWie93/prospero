#!/bin/bash

if ! type pacman &> /dev/null; then
    echo "pacman is not installed! Aborting"
    exit 1
fi

if ! type yay &> /dev/null; then
    echo "yay is not installed! Aborting"
    exit 1
fi

pkgs=$(dialog --stdout --separate-output --clear --backtitle "Installer Options..." --title "Package Selection" \
    --checklist "Use SPACE to select/deselct options and OK/Enter when finished."  30 100 30 \
       $(awk -v q='"' '{ print $1 " " $1 " " "on" }' ./pkglist.txt))

clear

sudo yay -S $pkgs


pkgs=$(dialog --stdout --separate-output --clear --backtitle "Installer Options..." --title "Package Selection" \
    --checklist "Use SPACE to select/deselct options and OK/Enter when finished."  30 100 30 \
       $(awk -v q='"' '{ print $1 " " $1 " " "on" }' ./aurlist.txt))

clear

yay -S $pkgs
