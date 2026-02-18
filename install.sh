#!/bin/bash

# --- Cyber-Junk69's Rice Installer ---

# Define colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Starting installation...${NC}"

# 1. Create Backups
echo -e "${BLUE}Backing up existing configs...${NC}"
mkdir -p ~/.config_backup
[ -d ~/.config ] && mv ~/.config ~/.config_backup/config_$(date +%Y%m%d_%H%M%S)
[ -f ~/.zshrc ] && mv ~/.zshrc ~/.config_backup/.zshrc_$(date +%Y%m%d_%H%M%S)
[ -f ~/.p10k.zsh ] && mv ~/.p10k.zsh ~/.config_backup/.p10k.zsh_$(date +%Y%m%d_%H%M%S)

# 2. Create Symlinks
echo -e "${BLUE}Creating symlinks...${NC}"
# Links the entire .config and .local folders to your home
ln -sf ~/dotfiles/.config ~/.config
ln -sf ~/dotfiles/.local ~/.local
# Links shell configs
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.p10k.zsh ~/.p10k.zsh

# 3. Set Executable Permissions
echo -e "${BLUE}Setting permissions for scripts...${NC}"
chmod +x ~/dotfiles/.local/bin/rofi-appearance-hub
chmod +x ~/dotfiles/.local/bin/selector/*
chmod +x ~/dotfiles/.config/waybar/scripts/*.sh

# 4. Final instructions
echo -e "${GREEN}Installation Complete!${NC}"
echo -e "Please restart your terminal or run: ${BLUE}source ~/.zshrc${NC}"
