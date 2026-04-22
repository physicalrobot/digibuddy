#!/usr/bin/env bash
~/.config/gabubuddy/scripts/launch_buddy.sh &
sleep 0.3
alacritty \
  --class dialogterm \
  --title Dialogue \
  --option 'window.opacity=0.80' \
  --option 'window.padding.x=24' \
  --option 'window.padding.y=18' \
  --option 'window.dimensions.columns=100' \
  --option 'window.dimensions.lines=16' \
  --option 'font.size=10' \
  --option 'font.normal.family="Creepster"' \
  --option 'font.bold.family="Creepster"' \
  --option 'font.bold.style="Regular"' \
  --option 'font.italic.family="Creepster"' \
  --option 'window.dynamic_title=false' \
  -e bash -c 'tmux new-session "cd ~/.config/gabubuddy && GABUBUDDY=1 claude" \; split-window -h -p 30 \; send-keys "cmatrix" Enter \; set-option status off \; select-pane -t 0'
