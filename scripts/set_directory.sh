#!/bin/bash
# set_directory.sh
# Script to set the working directory dynamically

# Prompt the user to enter the working directory
read -p "Enter the working directory (or press Enter to use './backend'): " input_directory

# Use the provided directory or default to "./backend" if none was given
if [ -z "$input_directory" ]; then
  working_directory="./backend"  # Default directory
else
  working_directory=$input_directory  # User-provided directory
fi

# Export it as an environment variable for use in GitHub Actions
echo "working_directory=$working_directory" >> $GITHUB_ENV
