read -p "Enter the username to search: " username

if id "$username" &>/dev/null; then
    echo "User $username exists on the system."
else
    echo "User $username does not exist on the system."
fi
