#!/bin/sh

xinput --set-prop "Gaming Mouse" "libinput Accel Profile Enabled" 0, 1

exec xmonad
