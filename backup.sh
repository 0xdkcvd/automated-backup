#!/bin/bash
time_backup=$(date +"%d_%m_%Y")

read -p "Which folder path do you want to backup? (e.g., /home/user/folder): " folder_to_backup

echo "Contents of folder: $folder_to_backup"
ls -l $folder_to_backup

folder_name=$(basename "$folder_to_backup")

read -p "Do you wish to continue with this backup? (y/n) " -n 1 -r
echo # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Backup terminated."
    exit 1
fi

read -p "Where do you want to store the backup? (e.g., /home/user/backup): " backup_folder_location
if [ ! -d "$backup_folder_location" ]; then
  echo "Creating backup storage folder..."
  mkdir -p "$backup_folder_location"  
fi

echo "Creating backup file..."
tar -czvf "$backup_folder_location/${folder_name}_$time_backup.tar.gz" "$folder_to_backup"
echo "Backup complete. Backup file is located in $backup_folder_location with filename: ${folder_name}_$time_backup.tar.gz"
