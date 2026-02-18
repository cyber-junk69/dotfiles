#!/usr/bin/env bash

# Paths
CONFIG_DIR="$HOME/.config/waybar/themes"
RASI_FILE="$HOME/.config/rofi/waybar-selector.rasi"

# 1. Check if Waybar themes actually exist
if [[ ! -d "$CONFIG_DIR" ]]; then
    notify-send "Waybar Error" "Themes folder missing at $CONFIG_DIR"
    exit 1
fi

# 2. Get list of themes
themes=$(ls "$CONFIG_DIR")

# 3. Launch Rofi and capture choice
# If the menu doesn't show, try running this line in your terminal to see the error
choice=$(echo -e "$themes" | rofi -dmenu -config "$RASI_FILE" -p "󱑒 Waybar Style")

# 4. Apply the choice
if [ -n "$choice" ]; then
    killall -9 waybar
    # Wait for process to exit
    while pgrep -u $USER -x waybar >/dev/null; do sleep 0.1; done
    
    # Launch with explicit files
    waybar -c "$CONFIG_DIR/$choice/config.jsonc" -s "$CONFIG_DIR/$choice/style.css" &
    notify-send "Waybar" "Applied $choice style"
fi