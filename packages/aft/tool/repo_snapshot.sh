#!/bin/bash

# This script copies the pubspec.yaml and changelog.md files from /packages to /test/snapshot.
# Run this script as needed when updating tests.

ROOT_DIR="../.."
PACKAGES_DIR="$ROOT_DIR/packages"
SNAPOSHOT_DIR="$PACKAGES_DIR/aft/test/version_bump/data/repo_snapshot"
DEST_DIR="$SNAPOSHOT_DIR/packages"

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"
# Find pubspec.yaml and changelog.md files while skipping directories containing "example" or "test"
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
    # Copy the file to the destination
    cp "$file" "$DEST_DIR/$RELATIVE_PATH"
done

cp "$ROOT_DIR/pubspec.yaml" "$SNAPOSHOT_DIR/pubspec.yaml"

echo "Snapshot copy complete."
