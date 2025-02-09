#!/bin/bash
echo $(brightnessctl | grep -oP '\(\d+%\)' | tr -d '()%')