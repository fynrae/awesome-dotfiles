#! /bin/sh

DEVICE_ID=$(xinput list | grep 'Logitech G102 Prodigy Gaming Mouse' | head -n 1 | sed -n 's/.*id=\([0-9]*\).*/\1/p')

xinput --set-prop $DEVICE_ID 'libinput Accel Speed' -1
