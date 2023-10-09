#!/bin/bash

# Get the number of connected monitors
num_monitors=$(xrandr --listmonitors | grep -c "Monitors: 2")
if [ "$num_monitors" -eq 1 ]; then
	# If only one monitor is detected, use the config for a single monitor
	echo "In choose_i3_config: enter dual monitor" >>~/.config/i3/script_log.txt
	# mv ~/.config/i3/config_single_monitor ~/.config/i3/config # Rename the single monitor config
else
	# If multiple monitors are detected, use the config for dual monitors
	echo "In choose_i3_config: enter single monitor" >>~/.config/i3/script_log.txt
	# mv ~/.config/i3/config_dual_monitors ~/.config/i3/config # Rename the dual monitor config
fi

# Restart i3 to apply the new configuration
# i3-msg restart
