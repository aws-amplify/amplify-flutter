#!/bin/bash

# This script copies the pubspec.yaml files and the content of *.md files up to the second H2 header from /packages to /test/snapshot.

ROOT_DIR="../.."
PACKAGES_DIR="$ROOT_DIR/packages"
SNAPOSHOT_DIR="$PACKAGES_DIR/aft/test/version_bump/data/repo_snapshot"
DEST_DIR="$SNAPOSHOT_DIR/packages"

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Function to process markdown files
process_markdown() {
    local input_file="$1"
    local output_file="$2"
    awk '
    BEGIN {count = 0; print_line = 1}
    /^## / {count++}
    {
        if (count < 2 && print_line) {
            print $0 > "'"$output_file"'"
        }
    }
    count == 2 {print_line = 0}
    ' "$input_file"
}


# Find pubspec.yaml and *.md files while skipping directories containing "example" or "test"
find "$PACKAGES_DIR" \( -name "pubspec.yaml" -o -name "CHANGELOG.md" \) | while read -r file; do
    # Get the directory path of the file
    DIR_PATH=$(dirname "$file")
    # Skip directories containing "example", "test", "goldens", "doc", or "aft"
    if [[ "$DIR_PATH" == *example* || "$DIR_PATH" == *test* || "$DIR_PATH" == *goldens* || "$DIR_PATH" == *doc* || "$DIR_PATH" == *aft* ]]; then
        continue
    fi
    # Get the relative path of the file
    RELATIVE_PATH="${file#$PACKAGES_DIR/}"
    # Create the directory in the destination if it doesn't exist
    mkdir -p "$DEST_DIR/$(dirname "$RELATIVE_PATH")"
    
    # Process the file based on its extension
    if [[ "$file" == *.md ]]; then
        process_markdown "$file" "$DEST_DIR/$RELATIVE_PATH"
    else
        # Copy non-markdown files as is
        cp "$file" "$DEST_DIR/$RELATIVE_PATH"
    fi
done

cp "$ROOT_DIR/pubspec.yaml" "$SNAPOSHOT_DIR/pubspec.yaml"

echo "Snapshot copy complete."
