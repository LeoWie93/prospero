echo "Updating repo files"

echo "rofi"
cat ~/.config/rofi/config.rasi > ./setup/rofi-setup/config.rasi

echo "xfce4 config"
cp -r ~/.config/xfce4/xfconf ./setup
cp -r ~/.config/xfce4/terminal ./setup

