#!/bin/bash


read -p "Enter the package name" package_name


sudo apt-get update 

sudo apt install $package_name 

if dpkg -s "$package_name" &> /dev/null; then

	echo "$package_name alredy installed"
else
	echo "$package_name not installed"
fi

