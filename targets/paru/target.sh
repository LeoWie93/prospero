#!/usr/bin/env bash

setup(){
    git clone https://aur.archlinux.org/paru.git \
        && cd paru \
        && makepkg -si --noconfirm \
        && cd .. \
        && rm -rf paru
}

remove() {
    sudo pacman -Rs paru
}

