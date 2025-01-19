#!/bin/bash

# This script attempts to find the largest number in a file.
# However, it contains a subtle bug related to floating-point numbers.

filename="numbers.txt"

largest=0

while IFS= read -r number; do
  if (( $(echo "$number > $largest" | bc -l) )); then
    largest=$number
  fi

done < "$filename"

echo "Largest number: $largest"