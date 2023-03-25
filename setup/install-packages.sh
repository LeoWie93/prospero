#!/bin/bash

pkgs=$(dialog --stdout --separate-output --clear --backtitle "Installer Options..." --title "Package Selection" \
    --checklist "Use SPACE to select/deselct options and OK/Enter when finished."  30 100 30 \
       $(awk -v q='"' '{ print $1 " " $1 " " "on" }' $REPO_ROOT/data/pkglist.txt))

clear

sudo yay -S $pkgs


pkgs=$(dialog --stdout --separate-output --clear --backtitle "Installer Options..." --title "Package Selection" \
    --checklist "Use SPACE to select/deselct options and OK/Enter when finished."  30 100 30 \
       $(awk -v q='"' '{ print $1 " " $1 " " "on" }' $REPO_ROOT/data/aurlist.txt))

clear

yay -S $pkgs
