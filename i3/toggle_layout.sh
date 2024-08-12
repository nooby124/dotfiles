#!/bin/bash

# Get the current layout
current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# Toggle between US and Hebrew
if [ "$current_layout" = "us" ]; then
    setxkbmap il
else
    setxkbmap us
fi

