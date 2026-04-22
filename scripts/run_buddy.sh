#!/usr/bin/env bash
set -euo pipefail

BASE="$HOME/.config/gabubuddy/gifs"
STATE_FILE="$HOME/.config/gabubuddy/state"

state="$(cat "$STATE_FILE" 2>/dev/null || echo idle)"

case "$state" in
  idle)    gif="$BASE/idle.gif" ;;
  talk)    gif="$BASE/talk.gif" ;;
  excited) gif="$BASE/excited.gif" ;;
  sleep)   gif="$BASE/sleep.gif" ;;
  *)       gif="$BASE/idle.gif" ;;
esac

exec chafa --animate=on --size=28x14 --symbols=vhalf "$gif"
