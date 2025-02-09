#!/bin/bash
echo $(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+(?=%)' | head -n1)