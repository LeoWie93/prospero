#!/usr/bin/env bash

setup(){
    command -v paru >/dev/null 2>&1
    if [[ $? -ne 0 ]]; then
        echo "Command {paru} is required but was not found."
        exit 1
    fi

    paru -S bruno-bin beekeeper-studio-bin davfs2 light \
    nerd-fonts-git otf-atkinson-hyperlegible webcord zen-browser-bin xremap
}

remove(){
    echo "not implemented"
}
