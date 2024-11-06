#!/bin/bash
# set_directory.sh
# Script to set the working directory dynamically

# Check if a directory was passed as an argument
if [ -z "$1" ]; then
  echo "No directory provided. Using default."
  working_directory="./backend"  # Default directory
else
  working_directory=$1  # Use the directory passed as argument
fi

# Export it as an environment variable for use in GitHub Actions
echo "working_directory=$working_directory" >> $GITHUB_ENV
