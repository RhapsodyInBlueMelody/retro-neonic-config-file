#!/bin/bash

# Kill any existing polybar instances
killall -q polybar

# Wait for processes to die
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar example --config=~/.config/polybar/config.ini
