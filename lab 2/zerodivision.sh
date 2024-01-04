#!/bin/bash

perform_division() {

    if [ $divisor -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
        exit 1
    fi

    result=$((numerator / divisor))
    echo "Result of division: $result"
}

read -p "Enter the numerator: " numerator
read -p "Enter the divisor: " divisor

perform_division $numerator $divisor
