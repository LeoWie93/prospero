#!/bin/bash


if [ $1 == "--help" ]; then
    echo "Saves the current host config to the prospero repo"
    echo " "
    echo "update [argument]"
    echo " "
    echo "options:"
    echo "xfce                      specific for xfce ~/.config/xfce files"
    exit 0
fi

REPO_ROOT=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
export REPO_ROOT

echo "Updating repo files with host changes"

$REPO_ROOT/update/aliases.sh
$REPO_ROOT/update/zsh.sh
$REPO_ROOT/update/tmux.sh
$REPO_ROOT/update/neovim.sh


if [ -f ~/.config/rofi/config.rasi ]; then
    echo "backup rofi config"
    cat ~/.config/rofi/config.rasi > $REPO_ROOT/data/rofi/config.rasi
fi

# exit early if their is no given param
if [ -z "$1" ]; then
    exit 0;
fi

if [ $1 == "xfce" ]; then
    echo "backup xfce config"
    cp -r ~/.config/xfce4/xfconf $REPO_ROOT/data
    cp -r ~/.config/xfce4/terminal $REPO_ROOT/data
fi
