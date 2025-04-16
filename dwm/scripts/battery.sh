#!/bin/bash

# The battery capacity

bat0=$(cat /sys/class/power_supply/BAT0/capacity)
bat1=$(cat /sys/class/power_supply/BAT1/capacity)
statu0=$(cat /sys/class/power_supply/BAT0/status)
status1=$(cat /sys/class/power_supply/BAT1/status)
if [ "$status1" = "Discharging" ]; then
	echo "$bat1   $bat0  "
elif [ "$status1" = "chargin" ]; then
	echo "$bat1 $bat0"
fi



