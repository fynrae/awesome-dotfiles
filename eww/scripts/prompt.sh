#!/bin/bash

if [ "$2" == "yes" ]; then
    if [ "$1" == "shutdown" ]; then
        eww close-all
        systemctl poweroff
    elif [ "$1" == "reboot" ]; then
        eww close-all
        systemctl reboot
    elif [ "$1" == "sleep" ]; then
        eww close-all
        systemctl suspend
    elif [ "$1" == "logout" ]; then
        eww close-all
        echo "awesome.quit()" | awesome-client
    fi
else
    eww close prompt
fi
