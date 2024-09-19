#!/bin/bash
# Get the current layout
current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# Toggle between US, Hebrew, and Estonian
if [ "$current_layout" = "us" ]; then
    setxkbmap il -option "caps:super"
elif [ "$current_layout" = "il" ]; then
    setxkbmap ee -option "caps:super"
else
    setxkbmap us -option "caps:super"
fi

