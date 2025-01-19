#!/bin/bash

# This script finds the largest number in a file, correctly handling floating-point numbers.

filename="numbers.txt"

largest=0

while IFS= read -r number; do
  if awk -v largest=$largest -v number=$number 'BEGIN {if(number > largest) print 1; else print 0}' ; then
    largest=$number
  fi
done < "$filename"

echo "Largest number: $largest"