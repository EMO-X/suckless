#!/bin/bash

# This is autostart scripts 

sxhkd &
dwmblocks & disown -h
nitrogen --restore
picom &
