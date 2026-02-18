#!/bin/bash

# 1. Kill existing processes
killall -q waybar
killall -q swaync

# 2. Wait until processes are fully closed
while pgrep -u $USER -x waybar >/dev/null; do sleep 0.1; done

# 3. FIX: Ensure the 'active' links exist so Waybar doesn't crash
# This matches your theme switcher logic
if [ ! -f "$HOME/.config/waybar/config" ]; then
    cp "$HOME/.config/waybar/configs/themes/Pill/config.jsonc" "$HOME/.config/waybar/config"
fi

# 4. Start Waybar with explicit paths
# Note: Use absolute paths to avoid the [error] Can't open config file
waybar -c "$HOME/.config/waybar/config" -s "$HOME/.config/waybar/style.css" &

# 5. Start SwayNC
swaync &

# 6. Apply your gsettings (matches your uploaded file)
gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3-dark" 
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"