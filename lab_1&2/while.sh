#!/bin/bash

total_cost=0

while true; do
    echo "Menu:"
    echo "1. Espresso - Rs.40"
    echo "2. Cold Coffee - Rs.50"
    echo "3. Latte - Rs.60"
    echo "4. Exit"

    read -p "Enter your choice (1-4): " choice

    case $choice in
        1)
            total_cost=$((total_cost + 40))
            echo "Added Espresso to your order. Total cost: $total_cost"
            ;;
        2)
            total_cost=$((total_cost + 50))
            echo "Added Cold Coffee to your order. Total cost: $total_cost"
            ;;
        3)
            total_cost=$((total_cost + 60))
            echo "Added Latte to your order. Total cost: $total_cost"
            ;;
        4)
            echo "Exiting the menu. Your total cost is: Rs.$total_cost"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            ;;
    esac
done
