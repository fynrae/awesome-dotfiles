#!/bin/bash
HOURS=$(date +"%H")
MIN=$(date +"%M")
if [ $1 = "h" ]; then
    echo $HOURS
elif [ $1 = "m" ]; then
    echo $MIN
fi