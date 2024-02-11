function depth_first_traversal() {
    local directory="$1"
    local depth="$2"
    local indent=""

    for ((i = 0; i < depth; i++)); do
        indent="$indent    "
    done

    echo "${indent}${directory}/"

    if [ -d "$directory" ]; then
        local file
        for file in "$directory"/*; do
            depth_first_traversal "$file" $((depth + 1))
        done
    fi
}

echo "Depth First Traversal:"
depth_first_traversal "/home/pcx/os/"
