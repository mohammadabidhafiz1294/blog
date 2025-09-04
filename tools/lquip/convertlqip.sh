#!/bin/bash

INPUT_DIRS=("assets/img/headers" "assets/img/posts")
CSV_PATH="assets/img/image_data.csv"

# Function to look up a data URL by basename
lookup_data_url() {
  local basename="$1"
  if [ ! -f "$CSV_PATH" ]; then
    echo "Error: CSV file not found at $CSV_PATH"
    exit 1
  fi
  
  # Skip header line and search for basename
  # Using cut with delimiter "," to extract the 3rd field
  # This is more reliable for handling large base64 strings
  result=$(grep "\"$basename\"" "$CSV_PATH" | head -1)
  if [ -n "$result" ]; then
    # Extract and print the full data URL (third column)
    # Parse CSV properly to handle quotes
    echo "$result" | awk -F '",' '{print $3}' | sed 's/^"//;s/"$//'
  else
    echo "Error: No entry found for basename: $basename"
    exit 1
  fi
}

# Check if we're looking up a specific basename
if [ "$1" = "-l" ] && [ -n "$2" ]; then
  lookup_data_url "$2"
  exit 0
fi

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