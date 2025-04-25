#!/bin/bash

# This script for install all packages needed by X11 and dwm 

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root." 
   exit 1
fi
#in void linux packages called
#sudo xbps-install base-devel libX11-devel libXft-devel libXinerama-devel freetype-devel fontconfig-devel

echo "Install X11 packages"
pacman -S --needed --noconfirm  xorg-server xorg-xinit xf86-input-libinput mesa-utils
sleep 2
clear
echo "Install tools packages"
pacman -S --noconfirm --needed  sxhkd brightnessctl pamixer picom fzf neovim bluez bluez-utils blueman  
sleep 2
clear
echo "Install fonts"
pacman -S --noconfirm --needed ttf-font-awesome  ttf-nerd-fonts-symbols ttf-dejavu ttf-liberation noto-fonts
clear

