#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <owner/repo> <github_token>"
    exit 1 # If the repository isn't given, exit the script
fi

REPO=$1
GITHUB_TOKEN=$2 # Required to use github api

# GitHub API URL
API_URL="https://api.github.com/repos/$REPO/languages"

# Fetch the language data
response=$(curl -s -H "Authorization: token $GITHUB_TOKEN" "$API_URL")

if [ -z "$response" ]; then
    echo "Failed to fetch data. Please check the repository and your token."
    exit 1
fi # Check if the response is valid

# Parse the languages and their byte counts
echo "Language Spread for repository $REPO:"
echo "----------------------------------------"
echo "$response" | jq -r 'to_entries | .[] | "\(.key): \(.value) bytes"'

# Optional: Total bytes of code
total_bytes=$(echo "$response" | jq 'to_entries | map(.value) | add')
echo "Total bytes of code: $total_bytes bytes"
