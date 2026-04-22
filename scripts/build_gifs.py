#!/usr/bin/env python3
from pathlib import Path
from PIL import Image

STATES = ["idle", "talk", "excited", "sleep"]
DURATIONS = {"idle": 460, "talk": 346, "excited": 260, "sleep": 1150}

base = Path.home() / ".config/gabubuddy/frames"
gif_dir = Path.home() / ".config/gabubuddy/gifs"
gif_dir.mkdir(parents=True, exist_ok=True)

for state in STATES:
    frames = [Image.open(base / f"{state}_{i}.png").convert("RGBA") for i in range(3)]
    frames[0].save(
        gif_dir / f"{state}.gif",
        save_all=True,
        append_images=frames[1:],
        duration=DURATIONS[state],
        loop=0,
        disposal=2,
    )
    print(f"  built {state}.gif  ({DURATIONS[state]}ms/frame)")

print("Done. Check ~/.config/gabubuddy/gifs/")
