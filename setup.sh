#!/bin/bash

echo "Starting setup"

# .scripts
echo "copy .scripts folder and register \$PATH"
cp -r ./.scripts ~/Documents/
echo "export PATH=/home/lwi/Documents/.scripts:$PATH" > ~/.bashrc

# aliases
./aliases/aliases.sh

# install programms
./setup/install-packages.sh

if dialog --stdout --yesno "Setup program configs? (rofi etc.)" 10 30; then
    # rofi
    ./setup/rofi-setup/install.sh
fi

#xfce
if dialog --stdout --yesno "Setup xfce config files?" 10 30; then
    cp -r ./setup/xfconf ~/.conf/xfce4/
    cp -r ./setup/terminal ~/.conf/xfce4/
fi

#node/js
if dialog --stdout --yesno "Setup nvm?" 10 30; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
fi

if dialog --stdout --yesno "Setup pnpm?" 10 30; then
    wget -qO- https://get.pnpm.io/install.sh | ENV="~/.bashrc" SHELL="$(which bash)" bash -
fi
