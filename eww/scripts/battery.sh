#!/bin/bash

# Merge .Xresources
xrdb -merge ~/.Xresources

# Function to get color value from .Xresources
get_color() {
    xrdb -query | grep "$1" | awk '{print $2}'
}

# Assign colors to variables
color0=$(get_color "*.color0")
color1=$(get_color "*.color1")
color2=$(get_color "*.color2")
color3=$(get_color "*.color3")
color4=$(get_color "*.color4")
color5=$(get_color "*.color5")
color6=$(get_color "*.color6")
color7=$(get_color "*.color7")
color8=$(get_color "*.color8")
color9=$(get_color "*.color9")
color10=$(get_color "*.color10")
color11=$(get_color "*.color11")
color12=$(get_color "*.color12")
color13=$(get_color "*.color13")
color14=$(get_color "*.color14")
color15=$(get_color "*.color15")

CAPACITY=$(upower -i "$(upower -e | grep 'BAT')" | grep -E "percentage" | awk '{print $2}' | sed 's/%//')
STATUS=$(cat /sys/class/power_supply/BAT0/status)
STATUS_HEX=""

if [ "$1" = "icon" ]; then
    if [ "$STATUS" = "Discharging" ]; then
        STATUS_HEX="#a1fa1b"
        if [ "$CAPACITY" -le 10 ]; then
            echo "󰁺"
        elif [ "$CAPACITY" -le 20 ]; then
            echo "󰁻"
        elif [ "$CAPACITY" -le 30 ]; then
            echo "󰁼"
        elif [ "$CAPACITY" -le 40 ]; then
            echo "󰁽"
        elif [ "$CAPACITY" -le 50 ]; then
            echo "󰁾"
        elif [ "$CAPACITY" -le 60 ]; then
            echo "󰁿"
        elif [ "$CAPACITY" -le 70 ]; then
            echo "󰂀"
        elif [ "$CAPACITY" -le 80 ]; then
            echo "󰂁"
        elif [ "$CAPACITY" -le 90 ]; then
            echo "󰂂"
        elif [ "$CAPACITY" -le 100 ]; then
            echo "󰁹"
        fi
    elif [ "$STATUS" = "Charging" ]; then
        STATUS_HEX="#1bfa44"
        if [ "$CAPACITY" -le 10 ]; then
            echo "󰢜"
        elif [ "$CAPACITY" -le 20 ]; then
            echo "󰂆"
        elif [ "$CAPACITY" -le 30 ]; then
            echo "󰂇"
        elif [ "$CAPACITY" -le 40 ]; then
            echo "󰂈"
        elif [ "$CAPACITY" -le 50 ]; then
            echo "󰢝"
        elif [ "$CAPACITY" -le 60 ]; then
            echo "󰂉"
        elif [ "$CAPACITY" -le 70 ]; then
            echo "󰢞"
        elif [ "$CAPACITY" -le 80 ]; then
            echo "󰂊"
        elif [ "$CAPACITY" -le 90 ]; then
            echo "󰂋"
        elif [ "$CAPACITY" -le 100 ]; then
            echo "󰂅"
        fi
    else
        STATUS_HEX="#fa1b1b"
        echo "󱃌"
    fi
elif [ "$1" = "capacity" ]; then
    echo "$(upower -i "$(upower -e | grep 'BAT')" | grep -E "percentage" | awk '{print $2}')"
elif [ "$1" = "status" ]; then
    echo "$STATUS"
elif [ "$1" = "hex" ]; then
    echo "$color2"
elif [ "$1" = "statushex" ]; then
    if [ "$STATUS" = "Discharging" ]; then
        STATUS_HEX="#a1fa1b"
    elif [ "$STATUS" = "Charging" ]; then
        STATUS_HEX="#1bfa44"
    else
        STATUS_HEX="#fa1b1b"
    fi
    echo "$STATUS_HEX"
fi
