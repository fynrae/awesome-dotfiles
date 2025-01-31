#!/bin/sh

if [ -f "$1" ] && [[ "$1" =~ \.(jpg|jpeg|png|gif|bmp|tiff|tif)$ ]]; then
    echo $1 > ~/.config/awesome/wal.txt
    feh --bg-fill $1
    wal -i $1 
    cp ~/.cache/wal/colors.Xresources ~/.Xresources
    sed -i '5s/\*\.foreground:/\*\.selforeground:/' ~/.Xresources
    sed -i '6s/\*\.background:/\*\.selbackground:/' ~/.Xresources
    xrdb -merge ~/.Xresources 
    awesome-client "awesome.restart()"
    betterlockscreen -u $(cat ~/.config/awesome/wal.txt)
else
    echo "Please provide a valid image file with a supported extension."
    exit 1
fi
