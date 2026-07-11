#!/bin/bash
if [ -z "$1" ]; then
    echo " Please provide a file"
    echo " Example: ./log_analyzer.sh filename.log"
    exit 1
fi

FILE=$1

ERROR=$(grep "ERROR" "$FILE" | sort | uniq -c | sort -rn)
echo "$ERROR"