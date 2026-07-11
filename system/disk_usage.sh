#!/bin/bash

DISK_USAGE=$(df -h)
MEMORY_USAGE=$(free -h)
echo "$FILE uses $DISK_USAGE"
echo "$FILE uses $MEMORY_USAGE"  
