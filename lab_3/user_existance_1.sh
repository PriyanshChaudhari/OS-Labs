read -p "Enter the username to search: " username

if [ -d "/home/$username" ]; then
    echo "User $username exists on the system."
else
    echo "User $username does not exist on the system."
fi
