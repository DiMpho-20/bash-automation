#!/bin/bash

# Did user provide a directory
if [ -z "$1" ]; then
    echo "Usage: ./find_large_files.sh <directory> <size>"
    echo "Example: ./find_large_files.sh ~/Downloads 100M"
    exit 1
fi

# Did user provide a size
if [ -z "$2" ]; then
    echo "Please provide a minimum file size."
    echo "Example: ./find_large_files.sh ~/Downloads 100M"
    exit 1
fi

TARGET="$1"
SIZE="$2"

echo "Searching in: $TARGET"
echo "Finding files larger than: $SIZE"
echo "--------------------------------"

find "$TARGET" -type f -size +$SIZE -exec du -h {} \;

echo "--------------------------------"
echo "Search complete."

