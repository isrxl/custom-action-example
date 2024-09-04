#!/bin/bash

# Get the input value
MY_INPUT=$1

# Print the input value to the console
echo "Input value: $MY_INPUT"

# Perform some logic, e.g., fetch data using curl
DATA=$(curl -s https://api.github.com)

# Use jq to parse the data
REPO_COUNT=$(echo "$DATA" | jq '.public_repos')

# Output a custom message
echo "GitHub has $REPO_COUNT public repositories"

# Set an output variable (if needed)
echo "::set-output name=my-output::$REPO_COUNT"
