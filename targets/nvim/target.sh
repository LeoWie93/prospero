#!/usr/bin/env bash

setup() {
    #TODO could it be interesting to build from source?
    sudo pacman -S neovim
}

remove() {
    sudo pacman -Rs neovim
}
