#!/usr/bin/env python3
from pathlib import Path
from PIL import Image

FRAME_W, FRAME_H = 24, 24
UPSCALE = 96
STATES = ["idle", "talk", "excited", "sleep"]

sheet = Image.open(Path.home() / ".config/gabubuddy/sheet.png").convert("RGBA")
out_dir = Path.home() / ".config/gabubuddy/frames"
out_dir.mkdir(parents=True, exist_ok=True)

for row, state in enumerate(STATES):
    for col in range(3):
        x = col * FRAME_W
        y = row * FRAME_H
        frame = sheet.crop((x, y, x + FRAME_W, y + FRAME_H))
        frame = frame.resize((UPSCALE, UPSCALE), Image.NEAREST)
        frame.save(out_dir / f"{state}_{col}.png")
        print(f"  saved {state}_{col}.png")

print("Done. Check ~/.config/gabubuddy/frames/")
