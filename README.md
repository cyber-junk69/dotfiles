<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cyber-Junk69's Hyprland Rice</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #e0e0e0;
            background-color: #1a1b26;
            max-width: 900px;
            margin: 0 auto;
            padding: 20px;
        }
        h1, h2 { color: #7aa2f7; border-bottom: 1px solid #414868; padding-bottom: 10px; }
        code {
            background-color: #24283b;
            padding: 2px 5px;
            border-radius: 4px;
            font-family: 'Courier New', Courier, monospace;
            color: #9ece6a;
        }
        pre {
            background-color: #24283b;
            padding: 15px;
            border-radius: 8px;
            overflow-x: auto;
            border: 1px solid #414868;
        }
        .screenshot-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            text-align: center;
        }
        .screenshot-table img {
            width: 100%;
            max-width: 400px;
            border-radius: 8px;
            margin-top: 10px;
        }
        .features-list {
            list-style: none;
            padding-left: 0;
        }
        .features-list li::before {
            content: "✨ ";
        }
        .tip {
            background-color: #3b4261;
            border-left: 5px solid #7aa2f7;
            padding: 10px;
            margin: 10px 0;
            font-style: italic;
        }
        a { color: #bb9af7; text-decoration: none; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>

    <h1>🏯 Cyber-Junk69's Hyprland Rice</h1>
    <p>A highly customized, themeable Hyprland environment featuring automated theme switching, Zsh integration, and a streamlined workflow. [cite: 1]</p>

    <hr>

    <h2>📸 Screenshots</h2>
    <div class="tip">
        <strong>Tip:</strong> Replace these placeholders with your own screenshots by saving images to an <code>assets/</code> folder in this repo! [cite: 2]
    </div>

    <table class="screenshot-table">
        <thead>
            <tr>
                <th>Main Workspace</th>
                <th>App Launcher</th>
                <th>Power Menu</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><img src="https://via.placeholder.com/400x225?text=Main+Workspace" alt="Desktop"></td>
                <td><img src="https://via.placeholder.com/400x225?text=Rofi+Hub" alt="Rofi"></td>
                <td><img src="https://via.placeholder.com/400x225?text=wlogout+CSS" alt="wlogout"></td>
            </tr>
        </tbody>
    </table>

    <hr>

    <h2>✨ Features</h2>
    <ul class="features-list">
        <li><strong>WM:</strong> <a href="https://hyprland.org/">Hyprland</a> (Dynamic Tiling) [cite: 4]</li>
        <li><strong>Bar:</strong> <a href="https://github.com/Alexays/Waybar">Waybar</a> (Customized layouts for each theme) [cite: 4]</li>
        <li><strong>Launcher:</strong> <a href="https://github.com/lbonn/rofi-wayland">Rofi-wayland</a> (Integrated Theme Hub) [cite: 4]</li>
        <li><strong>Shell:</strong> Zsh with <a href="https://ohmyz.sh/">Oh My Zsh</a> & <a href="https://github.com/romkatv/powerlevel10k">Powerlevel10k</a> [cite: 4]</li>
        <li><strong>Notifications:</strong> SwayNC [cite: 4]</li>
        <li><strong>Power Menu:</strong> wlogout (with custom CSS layout) [cite: 4]</li>
        <li><strong>Automation:</strong> Symlinked architecture for instant "Live Syncing" across devices. [cite: 4]</li>
    </ul>

    <hr>

    <h2>🚀 Installation</h2>

    <h3>1. Prerequisites</h3>
    <p>Ensure you have the following installed on your system (Arch Linux): [cite: 5]</p>
    <pre><code>sudo pacman -S hyprland kitty waybar rofi-wayland swaync wlogout zsh swww stow git</code></pre>

    <h3>2. Run the Installation</h3>
    <p>To install, run the following commands: [cite: 5]</p>
    <pre><code>git clone https://github.com/cyber-junk69/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh</code></pre>

</body>
</html>
