#!/bin/bash

WALL_DIR=~/Pictures/cat_wall

WALLPAPER=$(find "$WALL_DIR" -type f | shuf -n 1)

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper "eDP-1, $WALLPAPER"

sleep 1

hyprctl hyprpaper unload unused
