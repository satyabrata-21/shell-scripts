#!/bin/bash

# If condition -> is used to check whether this or that

# if -> then -> else

read -p "Enter the file name" filename

if [ -f "$filename" ];
then 	
	echo "$filename is exists"

else	
	echo "$filename doesn't exists"

fi
