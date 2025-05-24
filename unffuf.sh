#!/bin/bash

# Declare an associative array to track seen sizes

# Read the input Line by Line

while IFS= read -r line; do
# Extract the number of words using grep with Perl-compatible regex
	size=$(echo "$line" | grep -oP 'Words: \K\d+')

# If the size is not already in the array, print the line and mark the size as seen
	if [[ -n "$size" && -z "${seen_sizes[$size]}" ]]; then
		echo "$line"
		read line2
		echo "$line2"
		seen_sizes[$size]=1
	fi
done
