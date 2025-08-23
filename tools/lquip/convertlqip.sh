#!/bin/bash

INPUT_DIRS=("assets/img/headers" "assets/img/posts")
CSV_PATH="assets/img/image_data.csv"

echo "name,webp_path,base64" > "$CSV_PATH"

# Find all jpg, jpeg, and webp images in all subdirectories
find "${INPUT_DIRS[@]}" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.webp" \) | while read -r IMG; do
  BASENAME=$(basename "$IMG")
  DIRNAME=$(dirname "$IMG")
  EXT="${IMG##*.}"

  # If jpg or jpeg, convert to high quality webp and remove original
  if [[ "$EXT" =~ ^([jJ][pP][eE]?[gG])$ ]]; then
    WEBP_PATH="${IMG%.*}.webp"
    cwebp -q 90 "$IMG" -o "$WEBP_PATH"
    # Generate base64 for the new webp
    BASE64=$(base64 < "$WEBP_PATH" | tr -d '\n')
    DATAURI="data:image/webp;base64,$BASE64"
    # Write to CSV
    echo "\"$BASENAME\",\"$WEBP_PATH\",\"$DATAURI\"" >> "$CSV_PATH"
    rm "$IMG"
    echo "Converted and removed: $IMG"
  else
    # For webp, just generate base64
    BASE64=$(base64 < "$IMG" | tr -d '\n')
    DATAURI="data:image/webp;base64,$BASE64"
    echo "\"$BASENAME\",\"$IMG\",\"$DATAURI\"" >> "$CSV_PATH"
    echo "Base64 generated for: $IMG"
  fi
done

echo "CSV generation completed: $CSV_PATH"