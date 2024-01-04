#!/bin/bash

read -p "Enter a number: " number

for i in {1..10}; do
  echo "$number x $i = $((number * i))"
done
