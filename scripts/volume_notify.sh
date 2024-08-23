#!/bin/bash

# Define the icon path
icon_path="/usr/share/icons/feather16px/"
icon="volume-2.svg"  # Change this to the icon you want to test

# Send the notification
notify-send "Test Volume Notification" -i "${icon_path}${icon}"

