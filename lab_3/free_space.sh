filesystems=$(df -h --output=source,pcent | awk 'NR>1 {print $1,$2}' | sed 's/%//')

while read -r filesystem; do
    name=$(echo "$filesystem" | awk '{print $1}')
    free_space=$(echo "$filesystem" | awk '{print $2}')
    
    if [ "$free_space" -lt 10 ]; then
        echo "File system $name has less than 10% free space: $free_space%"
    fi
done <<< "$filesystems"