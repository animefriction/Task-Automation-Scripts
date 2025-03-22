#!/bin/bash

# Check if directory is provided
if [ -z "$1" ]; then
  echo "No directory provided. Exiting."
  exit 1
fi

# Check if directory exists
if [ ! -d "$1" ]; then
  echo "Directory $1 does not exist. Exiting."
  exit 1
fi

# Get backup file name (based on current date)
backup_file="${1//\//_}_backup_$(date +%Y%m%d).tar.gz"
tar -czf $backup_file $1
echo "Backup of $1 created: $backup_file"

# Ask for the backup destination
read -p "Enter the directory where the backup should be saved: " backup_dir

# If the directory exists, move the backup there
if [ -d "$backup_dir" ]; then
  mv $backup_file $backup_dir
  echo "Backup moved to $backup_dir"
else
  echo "Backup directory does not exist. Exiting."
  exit 1
fi

