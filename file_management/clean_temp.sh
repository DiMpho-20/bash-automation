#!/bin/bash

TARGET=${1:-.}

echo "Cleaning temp and log files i: $TARGET"

TMP_COUNT=$(find "$TARGET" -name "*.tmp"|wc -1)
LOG_COUNT=$(find "$TARGET" -name "*.log" | wc -l)

echo "Found $TMP_COUNT .tmp files"
echo "Found $LOG_COUNT .log files"

# Delete them
find "$TARGET" -name "*.tmp" -delete
find "$TARGET" -name "*.log" -delete

echo "✅ Cleanup complete"
