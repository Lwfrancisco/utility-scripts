#!/usr/bin/bash
# Toggles fn key default behavior on Keychron K2. (and maybe other keyboards)
# Run with root (sudo) permissions.

# Current behavior of fn row.
current_val=$(cat /sys/module/hid_apple/parameters/fnmode)
cmd="sudo tee /sys/module/hid_apple/parameters/fnmode"

if [ $current_val == '1' ]
then
 eval "echo 2 | ${cmd}"
 echo "Changed default behavior to fn keys."
elif [ $current_val == '2' ]
then
 eval "echo 1 | ${cmd}"
 echo "Changed default behavior to media keys."
else
 echo "Unexpected value. Doing nothing."
fi
