#!/bin/bash

# Get the current volume level (percentage without the % sign)
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '\d+%' | head -1 | tr -d '%')

case $1 in
    up)
        # Increase volume by 10% only if it doesn't exceed 100%
        if [ "$volume" -lt 100 ]; then
            pactl set-sink-volume @DEFAULT_SINK@ +10%
        else
            pactl set-sink-volume @DEFAULT_SINK@ 100%
        fi
        ;;
    down)
        # Decrease volume by 10%
        pactl set-sink-volume @DEFAULT_SINK@ -10%
        ;;
    mute)
        # Toggle mute
        pactl set-sink-mute @DEFAULT_SINK@ toggle
        ;;
esac

# Refresh i3status
killall -SIGUSR1 i3status

