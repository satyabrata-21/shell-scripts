#!/bin/bash


<<readme

This ia a script for backup with 5day rotation

Usages: ./backup.sh <path to your source> <path to backup folder>

readme


display_usages() {
	
	echo "Usages: ./backup.sh <path to your source> <path to backup folder>"
}


if [ $# -eq 0 ];then
	display_usages
fi


source_dir=$1
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
backup_dir=$2

create_backup() {

	zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}" &>/dev/null

	if [ "$?" -eq 0 ]; then

		echo "backup generated successfully for ${timestamp}"
	fi

}

perform_rotation() {
	backups=($(ls -t "${backup_dir}/backup_"*.zip))
	# echo "${backups[@]}"

	if [ "${#backups[@]}" -gt 5  ];  then

		echo "Performing rotation for 5 days"
		backups_to_remove=("${backups[@]:5}")
		# echo "${backups_to_remove[@]}"
	
		for backup  in "${backups_to_remove[@]}";
		do
			rm -f "${backup}"
		done	


	fi
}


create_backup
perform_rotation

