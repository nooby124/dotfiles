#!/bin/bash

# Get the current layout
current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# Toggle between US, Hebrew, and Estonian
if [ "$current_layout" = "us" ]; then
    setxkbmap il
elif [ "$current_layout" = "il" ]; then
    setxkbmap ee
else
    setxkbmap us
fi

