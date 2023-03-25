#!/bin/bash

i.f ! type pacman &> /dev/null; then
    echo "pacman is not installed! Aborting"
    exit 1
fi

if ! type yay &> /dev/null; then
    echo "yay is not installed! Aborting"
    exit 1
fi

REPO_ROOT=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
export REPO_ROOT

echo "Starting setup"
# .scripts
echo "copy .scripts folder and cli configs (zsh, tmux, neovim)"
cp -r $REPO_ROOT/.scripts ~/Documents/

# aliases
$REPO_ROOT/setup/aliases.sh

# cli
$REPO_ROOT/setup/zsh.sh
$REPO_ROOT/setup/tmux.sh
$REPO_ROOT/setup/neovim.sh
#
# git clone --depth 1 https://github.com/wbthomason/packer.nvim\
# ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install programms
$REPO_ROOT/setup/install-packages.sh

if dialog --stdout --yesno "Setup program configs? (rofi etc.)" 10 30; then
    # rofi
    $REPO_ROOT/setup/rofi.sh
fi

#xfce
if dialog --stdout --yesno "Setup xfce config files?" 10 30; then
    cp -r $REPO_ROOT/data/xfconf ~/.config/xfce4/
    cp -r $REPO_ROOT/data/terminal ~/.config/xfce4/
fi

#node/js
if dialog --stdout --yesno "Setup nvm?" 10 30; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
fi

if dialog --stdout --yesno "Setup pnpm?" 10 30; then
    wget -qO- https://get.pnpm.io/install.sh | ENV="~/.bashrc" SHELL="$(which bash)" bash -
fi
