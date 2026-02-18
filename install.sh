#!/bin/bash

# --- Cyber-Junk69's Rice Installer (Improved) ---

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}Starting installation...${NC}"

# 1. Create Backups (Individual folders to avoid breaking the OS)
echo -e "${BLUE}Backing up existing configs...${NC}"
mkdir -p ~/.config_backup/$(date +%Y%m%d_%H%M%S)
BACKUP_DIR=~/.config_backup/$(date +%Y%m%d_%H%M%S)

# Move old configs if they aren't already links
for folder in hypr rofi waybar swaync themes wlogout; do
    [ -d ~/.config/$folder ] && [ ! -L ~/.config/$folder ] && mv ~/.config/$folder $BACKUP_DIR/
done

# 2. Create Symlinks (Specific Folders)
echo -e "${BLUE}Creating symlinks...${NC}"
mkdir -p ~/.config
mkdir -p ~/.local

# Link specific config folders
ln -sfn ~/dotfiles/.config/hypr ~/.config/hypr
ln -sfn ~/dotfiles/.config/rofi ~/.config/rofi
ln -sfn ~/dotfiles/.config/waybar ~/.config/waybar
ln -sfn ~/dotfiles/.config/swaync ~/.config/swaync
ln -sfn ~/dotfiles/.config/themes ~/.config/themes
ln -sfn ~/dotfiles/.config/wlogout ~/.config/wlogout

# Link local bin and oh-my-zsh
rm -rf ~/.local/bin  # Remove existing bin to prevent nesting
ln -sfn ~/dotfiles/.local/bin ~/.local/bin
ln -sfn ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh

# Link shell configs
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.p10k.zsh ~/.p10k.zsh

# 3. Set Executable Permissions
echo -e "${BLUE}Setting permissions for scripts...${NC}"
find ~/dotfiles/.local/bin -type f -exec chmod +x {} +
chmod +x ~/dotfiles/.config/waybar/scripts/*.sh

echo -e "${GREEN}Installation Complete!${NC}"