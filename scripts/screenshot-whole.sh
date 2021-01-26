#!/usr/bin/sh
path=~/Pictures/screenshot.png

maim $path

if [ $? -eq 0 ]; then
    notify-send -a "Maim" "Took screenshot of whole screen and saved it to '$path'!"
fi
