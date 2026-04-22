#!/usr/bin/env bash
set -euo pipefail

FRAMES="$HOME/.config/gabubuddy/frames"
CACHE="$HOME/.config/gabubuddy/cache"
STATE_FILE="$HOME/.config/gabubuddy/state"
LAST=""
ANIM_PID=""

declare -A DELAYS=([idle]=0.28 [talk]=0.22 [excited]=0.18 [sleep]=0.65)

mkdir -p "$CACHE"
for state in idle talk excited sleep; do
  for i in 0 1 2; do
    src="$FRAMES/${state}_${i}.png"
    dst="$CACHE/${state}_${i}.ansi"
    if [[ ! -f "$dst" || "$src" -nt "$dst" ]]; then
      printf '%s' "$(chafa --size=28x14 --symbols=vhalf "$src" | sed $'s/\033\\[?25[lh]//g')" > "$dst"
    fi
  done
done

printf '\033[?1049h'  # enter alternate screen — fixed canvas, no scroll
printf '\033[?25l'    # hide cursor
trap 'kill "${ANIM_PID:-}" 2>/dev/null; printf "\033[?1049l\033[?25h"' EXIT INT TERM

while true; do
  STATE="$(cat "$STATE_FILE" 2>/dev/null || echo idle)"
  if [ "$STATE" != "$LAST" ]; then
    kill "$ANIM_PID" 2>/dev/null || true
    DELAY="${DELAYS[$STATE]:-0.16}"
    (
      printf '\033[?25l'
      while true; do
        for i in 0 1 2; do
          printf '\033[H'
          cat "$CACHE/${STATE}_${i}.ansi"
          sleep "$DELAY"
        done
      done
    ) &
    ANIM_PID=$!
    LAST="$STATE"
  fi
  sleep 0.2
done
