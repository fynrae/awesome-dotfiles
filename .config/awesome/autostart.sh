#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}
run "feh" --bg-fill $(cat ~/.config/awesome/wal.txt)
run "picom"
run "/home/fynrae/" set_mous_sens.sh
run "alttab" -w 1 -d 1 -font "xft:Terminus"
run "wal" -i $(cat ~/.config/awesome/wal.txt)
