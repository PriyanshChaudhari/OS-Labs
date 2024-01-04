#!/bin/bash

read -p "Enter a number (n < 15): " num

    a=0
    b=1

    echo -n "Fibonacci sequence up to $num: "

    for ((i=0; i<num; i++)); do
        echo -n "$a "

        temp=$((a + b))
        a=$b
        b=$temp
    done

    echo