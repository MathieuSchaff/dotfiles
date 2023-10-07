#!/bin/bash
# Check if HDMI-0 is available
if xrandr | grep -q HDMI-0; then
	# HDMI-0 is available, assign workspaces and launch applications
	echo "HDMI-0 is available"
else
	echo "HDMI-0 is not available"
fi
