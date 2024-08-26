#!/usr/bin/env bash

playerctlstatus=$(playerctl status 2> /dev/null)
playerctlname=$(playerctl metadata title 2> /dev/null)

if [[ $playerctlstatus ==  "" ]]; then
    echo ""
elif [[ $playerctlstatus =~ "Stopped" ]]; then
    echo ""
elif [[ $playerctlstatus =~ "Playing" ]]; then
    echo "%{A1:playerctl pause:}%{F#CD7F32}󰏤%{F-}%{A} ${playerctlname}"
else
    echo "%{A1:playerctl play:}%{F#CD7F32}󰐊%{F-}%{A} ${playerctlname}"
fi
