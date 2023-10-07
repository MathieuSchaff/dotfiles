#!/bin/bash

# Obtenir l'interface sans fil active
interface=$(iwconfig 2>/dev/null | awk '/ESSID/ {print $1}')

if [[ -z $interface ]]; then
  echo "Aucune interface sans fil active trouvée."
  exit 1
fi

# Obtenir l'adresse MAC de l'interface sans fil
mac_address=$(iwconfig $interface 2>/dev/null | awk '/Access Point/ {print $NF}')

if [[ -z $mac_address ]]; then
  echo "Impossible de récupérer l'adresse MAC de l'interface sans fil."
  exit 1
fi

echo "Adresse MAC de l'appareil connecté : $mac_address"
