function breadth_first_traversal() {
    local directory="$1"
    local queue=("$directory")

    while [ ${#queue[@]} -gt 0 ]; do
        local current="${queue[0]}"
        echo "$current"

        if [ -d "$current" ]; then
            local file
            for file in "$current"/*; do
                queue+=("$file")
            done
        fi

        queue=("${queue[@]:1}")
    done
}

echo "Breadth First Traversal:"
breadth_first_traversal "/home/pcx/os/"