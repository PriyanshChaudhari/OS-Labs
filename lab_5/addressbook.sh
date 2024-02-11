address_book="address_book.txt"

# Function to display menu
display_menu() {
    echo "Address Book Program"
    echo "1. Search address book"
    echo "2. Add New Entry"
    echo "3. Remove Entry"
    echo "4. Edit Entry"
    echo "5. Total Count of Entries"
    echo "6. List People Living in a City"
    echo "7. Exit"
}

# Function to search for a contact
search_contact() {
    echo "Enter the name to search for:"
    read name
    grep -i "$name" "$address_book"
}

# Function to add a new contact
add_contact() {
    echo "Enter Name:"
    read name
    echo "Enter Phone:"
    read phone
    echo "Enter Address:"
    read address
    echo "Enter Email:"
    read email
    echo "Enter City:"
    read city

    # Check for duplicates
    if grep -i "$name" "$address_book" > /dev/null; then
        echo "Entry already exists!"
    else
        echo "$name | $phone | $address | $email | $city" >> "$address_book"
        echo "Entry added successfully."
    fi
}

# Function to remove a contact
remove_contact() {
    echo "Enter the name to remove:"
    read name
    sed -i "/$name/d" "$address_book"
    echo "Entry removed successfully."
}

# Function to edit a contact
edit_contact() {
    echo "Enter the name to edit:"
    read old_name
    echo "Enter new Name:"
    read name
    echo "Enter new Phone:"
    read phone
    echo "Enter new Address:"
    read address
    echo "Enter new Email:"
    read email
    echo "Enter new City:"
    read city

    sed -i "s/^$old_name .*/$name | $phone | $address | $email | $city/" "$address_book"
    echo "Entry edited successfully."
}

# Function to count total entries
count_entries() {
    echo "Total count of entries:"
    cat "$address_book" | wc -l
}

# Function to list people living in a city
list_people_in_city() {
    echo "Enter the city name:"
    read city
    grep -i "| $city$" "$address_book"
}

# Main program
while true; do
    display_menu
    echo "Enter your choice:"
    read choice
    case $choice in
        1) search_contact ;;
        2) add_contact ;;
        3) remove_contact ;;
        4) edit_contact ;;
        5) count_entries ;;
        6) list_people_in_city ;;
        7) echo "Exiting..."; exit ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
done
