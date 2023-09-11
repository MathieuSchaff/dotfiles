#!/bin/bash
sleep 3
PRIMARY_OUTPUT="eDP-1-1"
SECONDARY_OUTPUT="HDMI-0"
log_file="$HOME/.config/i3/script_log.txt"

{
	echo "Script started"
	kreadconfig5 --group "KScreen" --key "ScaleFactor"
	xrandr --listmonitors
} >>"$log_file"

if xrandr | grep -q "$SECONDARY_OUTPUT"; then
	feh --bg-fill ~/Pictures/first-screen.jpg --output $PRIMARY_OUTPUT &
	feh --bg-fill ~/Pictures/sec-screen.jpg --output $SECONDARY_OUTPUT &
else
	feh --bg-fill ~/Pictures/first-screen.jpg --output $PRIMARY_OUTPUT &
fi

sleep 3
