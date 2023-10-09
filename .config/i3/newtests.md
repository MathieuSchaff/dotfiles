
# i3
## Explications:
Dans la config i3, ligne 16:

```shell
exec --no-startup-id xrdb -merge ~/.Xresources
```

Change le DPI a 160.

Ligne 59 Utilisation de rofi.
```shell
bindsym $mod+d exec rofi -show drun
```

ligne 116 a 121:(commenté pour l'instant) 
definit l'emplacement des workspace 
workspace 1 => second écran

## Configuration convenable:

Cette configuration pour double ecran semble correcte: 

    xrandr --output HDMI-0 --scale 1.5x1.5 --pos 0x0
    xrandr --output eDP-1-1 --pos 2880x0


