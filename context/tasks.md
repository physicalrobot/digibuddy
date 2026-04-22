# Common Tasks

These are the kinds of things Geordi asks for from this terminal. Handle them directly.

## Hyprland Config Changes
Edit files in `~/.config/hypr/`. Most visual/behavior changes go in `looknfeel.conf`. Keybindings go in `bindings.conf`. After edits, changes apply on next Hyprland reload — run `hyprctl reload` or tell the user to press the reload keybind.

## Waybar Changes
Edit `~/.config/waybar/config.jsonc` (modules, layout) or `style.css` (appearance). Restart with: `pkill waybar && waybar &`

## Omarchy Themes & Extensions
- List themes: `ls ~/.config/omarchy/themes/`
- Omarchy commands live in `~/.local/share/omarchy/bin/` — check there for available scripts
- Extensions go in `~/.config/omarchy/extensions/`
- Hooks (run on events) go in `~/.config/omarchy/hooks/`

## Installing Packages
- Official: `sudo pacman -S <package>`
- AUR: `yay -S <package>`
- Remove: `sudo pacman -Rns <package>`
- Search: `pacman -Ss <term>` or `yay -Ss <term>`

## Gabubuddy Widget
- Restart the widget: re-run `~/.config/gabubuddy/scripts/launch_claude.sh`
- Animation frames source: `frames/` directory, sprite sheet: `sheet.png`
- State is written to the `state` file by the animation script

## System Info
- Current processes: `btop`
- Hardware info: `fastfetch`
- Disk usage: `df -h` or `dust`
- Running services: `systemctl --user status` or `systemctl status`

## Display / Monitor
- List monitors: `hyprctl monitors`
- Change resolution/scale: edit `~/.config/hypr/monitors.conf`, then `hyprctl reload`
- Night light: `~/.config/hypr/hyprsunset.conf`
