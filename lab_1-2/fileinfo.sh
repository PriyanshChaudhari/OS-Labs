#!/bin/bash

echo "Files in the current working directory: $(pwd)"
echo "====================================="

# Iterate over files in the current working directory
for filename in *; do
    file_path=$(realpath "$filename")

    # Check if the path is a file (not a directory)
    if [ -f "$file_path" ]; then
        echo "File Name: $filename"
        echo "Size (in bytes): $(stat -c%s "$file_path")"
        echo "Last Modified Time: $(stat -c%Y "$file_path")"
        echo "Creation Time: $(stat -c%W "$file_path")"
        echo "Permissions: $(stat -c%A "$file_path")"
        echo "-------------------------------------"
    fi
done
