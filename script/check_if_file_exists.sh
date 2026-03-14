#!/bin/bash


# IF condition -> is used to check whether this or that
# if -> then -> else


read -p "enter the value a" a
read -p "enter the value b" b

if [ $a -gt $b ]; then
	echo "$a is bigger"
else 
	echo "$b is bigger"
fi


read -p "Enter the file path name" file_path

if [ -f "$file_path" ]; then
	echo "File exist"
else 
	echo "File doesn't exist"
fi
