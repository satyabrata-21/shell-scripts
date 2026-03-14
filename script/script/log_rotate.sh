#!/bin/bash

# check if argument is provided

if [ $# -ne 1 ]; then
	 echo "Usage: $0 <log_directory>"
	exit 1
	
fi

log_dir=$1

# Check if directory exists

if [ ! -d "$log_dir" ]; then
	 echo "Error: Directory does not exist!"
    exit 1
fi

compressed_count=0
deleted_count=0

# Compresse .log files older than 7 days

for file in $( find "$log_dir" -type f -name "*.log" -mtime +7)
do	
	gzip "$file"
	((compressed_count++))
done


# Delete .gz files older than 30 days

for file in $( find "$log_dir" -type f -name "*.gz" -mtime +30)
do 	
	rm -f "$file"
	((deleted_count++))
done

# Print summary
echo "Files compressed: $compressed_count"
echo "Files deleted: $deleted_count"




