#!/bin/bash

read -p "Enter the number " num

if [ "$num" -gt 0 ]; then
	echo "$num is bigger"
elif [ "$num" -lt 0 ];then
	echo "$num is smaller"
else 	
	echo "$num equal to 0"
fi

