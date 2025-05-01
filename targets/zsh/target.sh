#!/usr/bin/env bash

setup() {
    sudo pacman -S --noconfirm zsh zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting
    chsh -s /usr/sbin/zsh
}

remove() {
    chsh -s /usr/bin/bash
    sudo pacman -Rs --noconfirm zsh zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting
}

