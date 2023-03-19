from PIL import Image
import webcolors

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
            "rgb": color
        }
    hex_codes[hex_code]["count"] += count

# Print the number of occurrences of each hex code
for hex_code, info in hex_codes.items():
    count = info["count"]
    rgb = info["rgb"]
    print(f"Color {hex_code} occurs {count} times out of {total_pixels} pixels (RGB: {rgb})")
