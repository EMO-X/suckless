#!/bin/bash

# This is autostart scripts 

sxhkd &
dwmblocks & disown -h
nitrogen --restore
picom &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
