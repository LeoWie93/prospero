#!/usr/bin/env bash

setup() {
    echo "Make sure {stow, git} is installed"
    pacman -S stow git

    echo "Clone .dotfiles repo"
    git clone https://github.com/LeoWie93/.dotfiles.git "${HOME}/.dotfiles"

    echo "Execute stow"
    cd "${HOME}/.dotfiles"
    ./install.sh
}

remove(){
    echo "Clean this up manually"
}
