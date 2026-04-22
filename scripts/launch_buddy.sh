#!/usr/bin/env bash
exec alacritty \
  --title gabubuddy \
  --option 'window.padding.x=0' \
  --option 'window.padding.y=0' \
  --option 'window.opacity=0.0' \
  --option 'window.decorations="None"' \
  --option 'font.size=8' \
  --option 'window.dimensions.columns=28' \
  --option 'window.dimensions.lines=14' \
  --command bash -c "~/.config/gabubuddy/scripts/watch_state.sh"
