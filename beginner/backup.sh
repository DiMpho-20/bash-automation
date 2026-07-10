#!/bin/bash

# What to back up and where to put it
SOURCE=~/python_projects
DEST=~/backups
DATE=$(date +%Y-%m-%d)
BACKUP_NAME="python_projects_$DATE"

echo "Starting backup...."
echo "Source: $SOURCE"
echo "Destination: $DEST/$BACKUP_NMAE"

# Creating backups folder if it doesn't exist
mkdir -p "$DEST"

# Copying the folder
cp -r "$SOURCE" "$DEST/$BACKUP_NAME"

# Checking if backup succeeded
if [ $? -eq 0 ]; then
    echo "✅ Backup successful: $DEST/$BACKUP_NAME"
else
    echo "❌ Backup failed"
    exit 1
fi
