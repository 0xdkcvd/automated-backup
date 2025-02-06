## Description
This script is used to create a backup of a specified folder on a Linux/Unix system. The script prompts the user to input the folder they wish to back up and the location to store the backup.

## Features
- Interactive input to select the folder for backup
- Stores the backup file in the format `folder_name_dd_mm_yyyy.tar.gz` (e.g., `folder_10_01_2022.tar.gz`)
- Creates the backup storage directory if it does not exist

## Prerequisites
- Linux/Unix operating system
- Terminal access with appropriate permissions

## Usage
1. Save the script in a file with an `.sh` extension, e.g., `backup.sh`, or you can clone this repo
   ```bash
   git clone https://github.com/0xdkcvd/automated-backup
3. Grant execute permissions to the script using the following command:
   ```bash
   chmod +x backup.sh
4. Run the script with the following command:
5. Follow the on-screen instructions to specify the folder to back up and the backup storage location.
6. The script will create a tar.gz file from the selected folder and save it in the specified location.

## Example Usage
```bash
$ ./backup.sh
Which folder path do you want to backup? (e.g., /home/user/folder): /home/user/data
Contents of folder: /home/user/data
total 0
Do you wish to continue with this backup? (y/n) y
Where do you want to store the backup? (e.g., /home/user/backup): /home/user/backup
Creating backup file...
tar: data/: file changed as we read it
tar: Exiting with failure status due to previous errors
Backup complete. Backup file is located in /home/user/backup with filename: data_10_01_2022.tar.gz

## Notes
Ensure you have the necessary permissions to read the folder you wish to back up and to write the backup file to the specified storage location.
