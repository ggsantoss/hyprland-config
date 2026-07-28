#!/bin/zsh

ASCII_DIR="$HOME/.config/fastfetch/ascii"
CURRENT_LINK="$ASCII_DIR/current.txt"

mkdir -p "$ASCII_DIR"

if [ ! "$(ls -A "$ASCII_DIR"/*.txt 2>/dev/null)" ]; then
    echo "Nenhum arquivo .txt encontrado em $ASCII_DIR"
    echo "Adicione seus arquivos ASCII com extensão .txt"
    exit 1
fi

RANDOM_FILE=$(ls "$ASCII_DIR"/*.txt | shuf -n 1)

ln -sf "$RANDOM_FILE" "$CURRENT_LINK"

fastfetch