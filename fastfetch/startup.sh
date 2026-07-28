#!/bin/zsh

ASCII_DIR="$HOME/.config/fastfetch/ascii"
CURRENT_LINK="$ASCII_DIR/current.txt"

mkdir -p "$ASCII_DIR"

COUNT=$(ls -1 "$ASCII_DIR"/*.txt 2>/dev/null | wc -l)

if [ "$COUNT" -gt 1 ]; then
    RANDOM_FILE=$(ls "$ASCII_DIR"/*.txt | shuf -n 1)
    ln -sf "$RANDOM_FILE" "$CURRENT_LINK"
fi

fastfetch 2>/dev/null