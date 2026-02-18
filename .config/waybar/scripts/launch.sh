#!/bin/bash

# Kill existing processes
killall -q waybar
killall -q swaync

# Define paths explicitly (Prevents the directory error)
CONF="$HOME/.config/waybar/configs/Modern-Pills/config.jsonc"
STYLE="$HOME/.config/waybar/configs/Modern-Pills/style.css"

# Start Waybar pointing to specific FILES, not folders
waybar -c "$CONF" -s "$STYLE" &
swaync &