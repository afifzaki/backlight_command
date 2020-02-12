#!/bin/bash

# Get current brightness value
cur_bright="$(cat /sys/class/backlight/intel_backlight/brightness)"

# Get max brightness value
max_bright="$(cat /sys/class/backlight/intel_backlight/max_brightness)"

logic=$1
val=$2

# Default assign value
asg_val=$cur_bright

if [ $logic == "inc" ]; then
	asg_val=$(($cur_bright+$val))
	if [ $asg_val -gt $max_bright ]; then
		asg_val=$max_bright
	fi
elif [ $logic == "dec" ]; then
	asg_val=$(($cur_bright-$val))
	if [ $asg_val -lt 0 ]; then
		asg_val="0"
	fi
fi

# Assign new value of brightness
echo $asg_val > /sys/class/backlight/intel_backlight/brightness
