#!/bin/bash

if [ $# -eq 0 ]
then	
	echo "Please pass a file as an argument"
	echo "Usage: ./if-file-exists.sh <file_path>"
	exit 1
fi

if [ -f $1 ]
then
	echo "File exists"
else 	
	echo "File doesn't exist"
fi
