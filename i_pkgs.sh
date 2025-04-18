#!/bin/bash

# This script for install all packages needed by X11 and dwm 

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root." 
   exit 1
fi

pacman -S --needed --noconfim  xorg-server xorg-xinit xf86-input-libinput mesa-utils
pacman -S --noconfim --needed  sxhkd brightnessctl pamixer

