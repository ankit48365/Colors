from PIL import Image
import webcolors
import colorsys
import matplotlib.pyplot as plt
import numpy as np
from collections import defaultdict

# Prompt the user to enter the filename (without extension)
filename = input("Enter the filename (without extension): ")

# Add the .jpg extension if not provided
if not filename.endswith(".jpg"):
    filename += ".jpg"

# Construct the full path to the image file
filepath = f"D:/MyGit/Colors/Images/{filename}"

# Open the image file
image = Image.open(filepath)

# Get the total number of pixels in the image
total_pixels = image.size[0] * image.size[1]

# Get a list of (count, pixel) tuples for all colors in the image
color_counts = image.getcolors(total_pixels)

# Map RGB values to hex codes using webcolors
hex_codes = {}
for count, color in color_counts:
    hex_code = webcolors.rgb_to_hex(color)
    if hex_code not in hex_codes:
        hex_codes[hex_code] = {
            "count": 0,
            "rgb": color,
            "hsv": colorsys.rgb_to_hsv(*color)
        }
    hex_codes[hex_code]["count"] += count

# Group hex codes with similar HSV values together
grouped_hex_codes = defaultdict(lambda: {"count": 0, "hex_codes": []})
for hex_code, info in hex_codes.items():
    hsv = info["hsv"]
    hue_bin = int(hsv[0] / 20)
    sat_bin = int(hsv[1] / 0.2)
    val_bin = int(hsv[2] / 0.2)
    bin_id = (hue_bin, sat_bin, val_bin)
    grouped_hex_codes[bin_id]["count"] += info["count"]
    grouped_hex_codes[bin_id]["hex_codes"].append(hex_code)

# Sort the grouped hex codes by count in descending order
sorted_grouped_hex_codes = sorted(grouped_hex_codes.items(), key=lambda x: x[1]["count"], reverse=True)

# Create a stacked bar chart of the colors
fig, ax = plt.subplots()
bottom = 0
for bin_id, info in sorted_grouped_hex_codes:
    height = info["count"]
    hex_codes = info["hex_codes"]
    if len(hex_codes) > 1:
        r, g, b = np.mean([webcolors.hex_to_rgb(hex_code) for hex_code in hex_codes], axis=0).astype(int)
        color = webcolors.rgb_to_hex((r, g, b))
        ax.bar(0, height, bottom=bottom, color=color, edgecolor='black')
        for i, hex_code in enumerate(hex_codes):
            ax.text(0.5, bottom + height / 2, hex_code, ha='center', va='center', fontsize=8, color='white')
            height_frac = (i + 1) / len(hex_codes)
            ax.axhline(y=bottom + height * height_frac, color='white', alpha=0.5)
    else:
        hex_code = hex_codes[0]
        color = hex_code
        ax.bar(0, height, bottom=bottom, color=color, edgecolor='black')
        ax.text(0.5, bottom + height / 2, hex_code, ha='center', va='center', fontsize=8)
plt.show()
