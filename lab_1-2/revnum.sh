#!/bin/bash
 
echo "Enter a number"
read num
rev=0
 
while [ $num -gt 0 ]
do
    temp=$(( $num % 10 )) 
    rev=$(( $rev * 10 + $temp )) 
    num=$(( $num / 10 )) 
done
 
echo "Reversed number is : $rev"