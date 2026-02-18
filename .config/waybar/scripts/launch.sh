#!/usr/bin/env bash

# --- Path Definitions ---
# This matches the 'current' folder setup we just created
CURRENT_DIR="$HOME/.config/waybar/current"
CONFIG_PATH="$CURRENT_DIR/config.jsonc"
STYLE_PATH="$CURRENT_DIR/style.css"

# 1. Kill existing waybar and notification processes
killall -9 waybar 2>/dev/null
killall -9 swaync 2>/dev/null

# Wait for waybar to fully exit
while pgrep -u $USER -x waybar >/dev/null; do sleep 0.1; done

# 2. Check if the 'current' theme files exist
if [[ -f "$CONFIG_PATH" && -f "$STYLE_PATH" ]]; then
    # Launch Waybar using the files in the 'current' folder
    waybar -c "$CONFIG_PATH" -s "$STYLE_PATH" &
else
    # Emergency Fallback: If 'current' is empty, try to load default or notify
    notify-send "Waybar Error" "No theme found in '$CURRENT_DIR'. Loading system default."
    waybar &
fi

# 3. Restart SwayNC
swaync &

# 4. Ensure GTK settings match your preference (from your gsettings file)
gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3-dark" 
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"


notify-send "reload sucessfull"