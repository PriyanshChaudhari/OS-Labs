file_systems=$(df -h | awk 'NR>1 && substr($5, 1, length($5)-1) < 10 {print $1}')

if [ -n "$file_systems" ]; then
    echo "File systems with less than 10% free space:"
    echo "$file_systems"
else
    echo "No file systems found with less than 10% free space."
fi
