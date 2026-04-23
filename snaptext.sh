#!/bin/bash
# Snaptext — captura una región de pantalla y extrae el texto al clipboard

TMP=$(mktemp /tmp/snaptext-XXXXXX.png)

flameshot gui --raw > "$TMP" 2>/dev/null

if [ ! -s "$TMP" ]; then
    rm -f "$TMP"
    exit 0
fi

TEXT=$(tesseract "$TMP" stdout -l spa+eng 2>/dev/null | sed '/^$/d')
rm -f "$TMP"

if [ -n "$TEXT" ]; then
    echo "$TEXT" | xclip -selection clipboard
    notify-send "Snaptext" "Texto copiado al clipboard" --icon=edit-copy -t 2000
fi
