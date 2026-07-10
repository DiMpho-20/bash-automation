#!/bin/bash

DOWNLOADS=~/Downloads

echo "Organizing $DOWNLOADS..."

# Create folders if they don't exist
mkdir -p "$DOWNLOADS/Images"
mkdir -p "$DOWNLOADS/Videos"
mkdir -p "$DOWNLOADS/Music"
mkdir -p "$DOWNLOADS/Documents"
mkdir -p "$DOWNLOADS/Archives"
mkdir -p "$DOWNLOADS/Other"

# Move images
for file in "$DOWNLOADS"/*.{jpg,jpeg,png,gif,webp,svg}; do
    [ -f "$file" ] && mv "$file" "$DOWNLOADS/Images/"
done

# Move videos
for file in "$DOWNLOADS"/*.{mp4,mkv,avi,mov}; do
    [ -f "$file" ] && mv "$file" "$DOWNLOADS/Videos/"
done

# Move music
for file in "$DOWNLOADS"/*.{mp3,wav,flac,aac}; do
    [ -f "$file" ] && mv "$file" "$DOWNLOADS/Music/"
done

# Move documents
for file in "$DOWNLOADS"/*.{pdf,docx,doc,txt,xlsx,pptx}; do
    [ -f "$file" ] && mv "$file" "$DOWNLOADS/Documents/"
done

# Move archives
for file in "$DOWNLOADS"/*.{zip,tar,gz,rar,7z}; do
    [ -f "$file" ] && mv "$file" "$DOWNLOADS/Archives/"
done

echo "✅ Downloads organized"
echo "Check your folders:"
ls "$DOWNLOADS"
