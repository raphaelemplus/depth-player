#!/bin/bash

# Output directory for image files
OUTPUT_FILE="files.txt"

# Remove any existing content from the output file
> $OUTPUT_FILE

# Scan the assets directory and find all image files
echo "Scanning ./assets directory..."
find ./assets -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" -o -name "*.bmp" -o -name "*.svg" \) -print | sed 's/.\/assets\///g' >> $OUTPUT_FILE

echo "Scanning complete. Image files with web-safe extensions have been saved to images.txt"