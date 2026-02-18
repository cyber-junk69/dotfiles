#!/usr/bin/env bash

# Paths
CONFIG_DIR="$HOME/.config/waybar/themes"
RASI_FILE="$HOME/.config/rofi/waybar-selector.rasi"
CURRENT_DIR="$HOME/.config/waybar/current"

# 1. Check if Waybar themes actually exist
if [[ ! -d "$CONFIG_DIR" ]]; then
    notify-send "Waybar Error" "Themes folder missing at $CONFIG_DIR"
    exit 1
fi

# 2. Get list of themes
themes=$(ls "$CONFIG_DIR")

# 3. Launch Rofi and capture choice
choice=$(echo -e "$themes" | rofi -dmenu -config "$RASI_FILE" -p "󱑒 Waybar Style")

# 4. Apply the choice
if [ -n "$choice" ]; then
    # Create the 'current' directory if it doesn't exist
    mkdir -p "$CURRENT_DIR"

    # Remove old files and copy the new selected theme into 'current'
    rm -rf "$CURRENT_DIR"/*
    cp -r "$CONFIG_DIR/$choice/"* "$CURRENT_DIR/"

    # Kill waybar safely
    killall -9 waybar
    while pgrep -u $USER -x waybar >/dev/null; do sleep 0.1; done
    
    # Launch Waybar using the files now located in the 'current' folder
    # This makes it easier for other scripts to find the active config
    waybar -c "$CURRENT_DIR/config.jsonc" -s "$CURRENT_DIR/style.css" &
    
    notify-send "Waybar" "Theme $choice copied to 'current' and applied"
fi