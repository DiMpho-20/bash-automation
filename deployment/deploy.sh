#!/bin/bash
if [ -z "$1" ]; then
	echo "Please provide project folder"
	exit 1
fi

PROJECT_FOLDER=$1

#Navigate to my folder
cd "$PROJECT_FOLDER"

git pull

echo "Successfully deployed"
