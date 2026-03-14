#!/bin/bash

display_usages() {

        echo "Usages: ./backup.sh <path to your source> <path to backup folder>"
}


if [ $# -ne 2 ];then
        display_usages
fi


source_dir=$1
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
backup_dir=$2

  # Create a compressed tar.gz archive of the source directory in the backup directory

create_backup() {
	tar -cvzf "${backup_dir}/backup_${timestamp}.tar.gz" "${source_dir}" &>/dev/null
       if [ $? -eq 0 ];then
       echo "backup generated successfully : backup_${timestamp}"
       du -h "${backup_dir}"*.tar.gz
else
	echo "Backup failed"
	exit 1     
              
       fi 
}

# calling backup function

create_backup

# Function to delete old backups (>14 days)

delete_old_backups() {

# find and remove .tar.gz files older than 14 days in the backup directory

find "$backup_dir" -name "*.tar.gz" -type f -mtime +14 -print -exec rm -f {} \;

	if [ $? -eq 0 ];then
		echo "Old backup deleted successfully"
	fi
}

delete_old_backups

