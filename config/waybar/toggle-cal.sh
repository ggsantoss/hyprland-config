#!/bin/zsh

if pgrep -x calcurse > /dev/null
then
    pkill -x calcurse
else
    kitty -e calcurse &
fi