# [cite_start]🏯 Cyber-Junk69's Hyprland Rice [cite: 1]

[cite_start]A highly customized, themeable Hyprland environment featuring automated theme switching, Zsh integration, and a streamlined workflow. [cite: 1]

---

## 📸 Screenshots
> [!TIP]
> [cite_start]**Tip:** Replace these placeholders with your own screenshots by saving images to an `assets/` folder in this repo! 

| Main Workspace | App Launcher | Power Menu |
| :---: | :---: | :---: |
| ![Desktop](https://via.placeholder.com/400x225?text=Main+Workspace)  | [cite_start]![Rofi](https://via.placeholder.com/400x225?text=Rofi+Hub) [cite: 4] | [cite_start]![wlogout](https://via.placeholder.com/400x225?text=wlogout+CSS)  |

---

## ✨ Features
* **WM:** [Hyprland](https://hyprland.org/) (Dynamic Tiling) [cite: 4]
* **Bar:** [Waybar](https://github.com/Alexays/Waybar) (Customized layouts for each theme) [cite: 4]
* **Launcher:** [Rofi-wayland](https://github.com/lbonn/rofi-wayland) (Integrated Theme Hub) [cite: 4]
* **Shell:** Zsh with [Oh My Zsh](https://ohmyz.sh/) & [Powerlevel10k](https://github.com/romkatv/powerlevel10k) [cite: 4]
* **Notifications:** SwayNC [cite: 4]
* **Power Menu:** wlogout (with custom CSS layout) [cite: 4]
* **Automation:** Symlinked architecture for instant "Live Syncing" across devices. [cite: 4]

---

## 🚀 Installation

### 1. Prerequisites
Ensure you have the following installed on your system (Arch Linux): 

```bash
sudo pacman -S hyprland kitty waybar rofi-wayland swaync wlogout zsh swww stow git
```


2. Setup
To install, run the following commands: 

```bash
git clone [https://github.com/cyber-junk69/dotfiles.git](https://github.com/cyber-junk69/dotfiles.git) ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
```
