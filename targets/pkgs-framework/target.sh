#!/usr/bin/env bash

setup(){
    command -v paru >/dev/null 2>&1
    if [[ $? -ne 0 ]]; then
        echo "Command {paru} is required but was not found."
        exit 1
    fi

    pacman -S tuned-ppd
    paru -S fw-fanctrl-git

    echo "enable fw-fanctrl service"
}

remove(){
    echo "not implemented"
}
