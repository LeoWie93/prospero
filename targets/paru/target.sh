#!/usr/bin/env bash

setup(){
    RUN git clone https://aur.archlinux.org/paru.git \
        && cd paru \
        && makepkg -si --noconfirm \
        && cd .. \
        && rm -rf paru
}

remove() {
    sudo pacman -Rs paru
}

