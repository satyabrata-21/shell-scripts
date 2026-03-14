#!/bin/bash



# this script takes name from user and installs it

read -p "Enter the package namme " package_name


echo "checking if package  is already installed...."

if dpkg -s $package_name >/dev/null 2>&1 ; then
	echo "$package_name already installed "
	exit 1
esle 
	echo "Countinuing Instalation...."
fi

echo "Updating system & Installing $package_name"
sudo apt-get update
sudo apt install $package_name


sudo systemctl start $package_name
sudo systemctl status $package_name


echo "System update & $package_name installed successfully"
echo "========Thank you========="

