# System Context

## Hardware
- **Machine:** ThinkPad with Intel Core i7-3520M @ 2.90GHz
- **RAM:** 16GB
- **GPU:** Intel HD Graphics 4000 (integrated, 3rd Gen Core)

## OS & Desktop
- **Distro:** Arch Linux (rolling release)
- **WM:** Hyprland 0.54.3 (Wayland) via UWSM
- **Framework:** Omarchy — an opinionated Hyprland setup layered on top
- **Shell:** bash
- **Package managers:** pacman (primary), yay (AUR helper)

## Key Config Locations
- Hyprland: `~/.config/hypr/` — split into: `hyprland.conf`, `bindings.conf`, `monitors.conf`, `looknfeel.conf`, `input.conf`, `autostart.conf`
- Waybar: `~/.config/waybar/config.jsonc`, `~/.config/waybar/style.css`
- Omarchy: `~/.config/omarchy/` — themes in `themes/`, hooks in `hooks/`, extensions in `extensions/`
- Alacritty: `~/.config/alacritty/`
- Mako (notifications): `~/.config/mako/`
- Idle/lock: `~/.config/hypr/hypridle.conf`, `~/.config/hypr/hyprlock.conf`
- Night light: `~/.config/hypr/hyprsunset.conf`

## This Widget (Gabubuddy)
- Lives at: `~/.config/gabubuddy/`
- Launch script: `scripts/launch_claude.sh` — starts the sprite animation + opens an Alacritty window with a tmux session running Claude Code
- Sprite frames: `frames/`, compiled GIFs: `gifs/`, frame cache: `cache/`
- Animation state file: `state` (current animation state name)
- The terminal opens with `GABUBUDDY=1` env var set, working directory is this folder

## Display
- Monitor config: `~/.config/hypr/monitors.conf`
- Currently using auto/preferred resolution with scale auto (optimized for retina/2x but set to auto)
- GDK_SCALE=2 is set

## Notable Tools
- `btop` — system monitor
- `lazygit` — git TUI
- `fastfetch` — system info
- `imv` — image viewer
- Doom Emacs installed at `~/.config/doom/`
- Browser: Brave (primary), Chromium
