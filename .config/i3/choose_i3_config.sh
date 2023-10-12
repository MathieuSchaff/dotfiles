#!/bin/bash

# Exécute la commande xrandr --listmonitors et stocke la sortie dans une variable
output=$(xrandr --listmonitors)

# Utilise awk pour extraire le nombre de moniteurs de la première ligne
num_monitors=$(echo "$output" | awk 'NR==1{print $2}')

# Affiche le nombre de moniteurs
echo "Nombre de moniteurs : $num_monitors"
if [ "$num_monitors" -eq 1 ]; then
	# If only one monitor is detected, use the config for a single monitor
	echo "In choose_i3_config: enter dual monitor" >>~/.config/i3/script_log.txt
	# mv ~/.config/i3/config_single_monitor ~/.config/i3/config # Rename the single monitor config
else
	# If multiple monitors are detected, use the config for dual monitors
	echo "In choose_i3_config: enter single monitor" >>~/.config/i3/script_log.txt
	# mv ~/.config/i3/config_dual_monitors ~/.config/i3/config # Rename the dual monitor config
fi
