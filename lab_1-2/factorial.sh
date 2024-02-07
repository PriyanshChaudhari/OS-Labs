#!/bin/bash

read -p "Enter a number (n < 15): " num

    result=1

    for ((i=1; i<=num; i++)); do
        result=$((result * i))
    done

    echo "Factorial of $num: $result"