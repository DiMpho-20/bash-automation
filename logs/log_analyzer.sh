#!/bin/bash
if [ -z "$1" ]; then
    echo "Please enter a log file"
    echo "Example: ./log_analyzer.sh filename.log"
    exit 1
fi
FILE=$1
ERRORS=$(grep -c "ERROR" "$FILE")
echo "Errors: $ERRORS"
INFOS=$(grep -c "INFO" "$FILE")
echo "Infos: $INFOS"
WARNINGS=$(grep -c "WARNING" "$FILE")
echo "Warnings: $WARNINGS"
