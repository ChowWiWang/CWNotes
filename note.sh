#!/bin/bash

# Create the 'notes' folder in the home directory if it doesn't exist
mkdir -p "$HOME/notes"

# Get the current date in the format YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

# Create a file for the current day
notes_file="$HOME/notes/$current_date.txt"

# Append notes input to the file when the 'note' command is entered
while read -p "Enter a note (or type 'exit' to stop): " input; do
    if [[ "$input" == "exit" ]]; then
        break
    fi
    echo "$input" >> "$notes_file"
done

echo "Notes saved in $notes_file"

