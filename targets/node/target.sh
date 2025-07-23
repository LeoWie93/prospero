#!/usr/bin/env bash

setup(){
    command -v paru >/dev/null 2>&1
    if [[ $? -ne 0 ]]; then
        echo "Command {paru} is required but was not found."
        exit 1
    fi

    paru -S fnm-bin
    source ~/.zshrc

    fnm install lts

    #Global Packages
    ## TODO is this the correct place?
    npm install -g neovim 
}

remove(){
    echo "remove: not implemented"
}
