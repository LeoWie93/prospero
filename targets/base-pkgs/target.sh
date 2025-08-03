#!/usr/bin/env bash

setup(){

    command -v pacman >/dev/null 2>&1
    if [[ $? -ne 0 ]]; then
        echo "Command {pacman} is required but was not found."
        exit 1
    fi

    # Base Packges
    sudo pacman -S waybar wofi \
        acpi \
        flatpak \
        networkmanager network-manager-applet \
        cups cups-filters cups-pdf  ghostscript gutenprint \
        bat bitwarden blueberry dunst bluez-utils btop htop keepassxc obsidian stow solaar \
        slurp grim swappy \
        jq

    # File Explorer
    sudo pacman -S thunar thunar-volman thunar-archive-plugin thunar-media-tags-plugin tumbler gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb

    # Terminal, CLI
    sudo pacman -S atuin \
        fd fzf \
        ghostty \
        starship \
        tmux

    # Languages
    sudo pacman -S go

    # Fonts, icons etc
    sudo pacman -S adobe-source-han-sans-cn-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts \
        ttf-bitstream-vera ttf-dejavu ttf-liberation ttf-opensans \
        noto-fonts opendesktop-fonts
}

remove(){
    echo "not implemented"
}

