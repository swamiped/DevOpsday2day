#!/bin/bash

# print the numbers divisible by 3,5 but not 15
for i in $(seq 1 100); do
    # Check if the number is divisible by 3 or 5
    divisible_by_3_or_5=$(( i % 3 == 0 || i % 5 == 0 ))
    # Check if the number is not divisible by 15
    not_divisible_by_15=$(( i % 15 != 0 ))
    
    if (( divisible_by_3_or_5 && not_divisible_by_15 )); then
        echo "$i"
    fi
done