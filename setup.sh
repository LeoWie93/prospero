#!/bin/bash

echo "Starting setup"

# .scripts
echo "copy .scripts folder and register $PATH"
cp -r ./.scripts ~/Documents/
echo "export PATH=/home/lwi/Documents/.scripts:$PATH" > ~/.bashrc

# aliases
./aliases/aliases.sh

# install programms
echo "Installing programms"
pacman -S - < ./setup/pkglist.txt
yay -S - < ./setup/aurlist.txt

echo "Setting up programms"
# xfce4
cp -r ./setup/xfconf ~/.conf/xfce4/
cp -r ./setup/terminal ~/.conf/xfce4/

# rofi
./setup/rofi-setup/install.sh

#node/js
echo "Setting up nvm and pnpm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

wget -qO- https://get.pnpm.io/install.sh | ENV="~/.bashrc" SHELL="$(which bash)" bash -