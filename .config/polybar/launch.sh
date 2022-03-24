#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c ~/.config/polybar/config.ini -r workspaces &

#(sleep 2; polybar -c ~/.config/polybar/config_old.ini -r base) &
#(sleep 3; polybar -c ~/.config/polybar/config_old.ini -r background) &
echo "Polybar launched..."
