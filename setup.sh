#!/bin/sh

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Copying widgets
rmdir $SCRIPT_DIR/.config/awesome/awesome-wm-widgets
git clone https://github.com/streetturtle/awesome-wm-widgets.git $SCRIPT_DIR/.config/awesome/awesome-wm-widgets

# Installing fonts
sudo pacman -S $(pacman -Ssq ttf-)

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay || exit
makepkg -si || exit

# Install awesomewm (GIT)
yay -S awesome-git || exit

# Install FTLabs-Picom, rofi, cava, nvim, fastfetch, kitty, pywal, ...
yay -S picom-ftlabs-git rofi cava nvim fastfetch kitty pywal feh xorg-server xorg-apps xorg xorg-xrdb xorg-docs xorg-xinput xmenu alttab || exit

# Copy and move Pictures folder (Wallpaper)
cp -r Pictures ~/ || exit

# Copy and move .config folder
cp -r .config ~/ || exit

# Copy and move .local folder
cp -r .local ~/ || exit

# Copy and move menu1.sh
cp menu1.sh ~/menu1.sh || exit

# Copy and move newwal.sh to /usr/bin
sudo cp newwal.sh /usr/bin/newwal || exit

# Copy and move wallpaper to /usr/bin
sudo cp wallpaper /usr/bin/wallpaper || exit

# Copy and move set_mous_sens.sh
cp set_mous_sens.sh ~/set_mous_sens.sh || exit

echo "Setup completed successfully!"

