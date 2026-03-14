#!/bin/bash


if [ "$EUID" -ne 0 ];then
	echo "Run as a root"
	exit 1
else
	echo "Running as root"
fi

packages=( "nginx" "wget")

for pkg in "${packages[@]}";do
	if dpkg -s "$pkg" &> /dev/null; then
		echo "Status : $pkg is installed"
	else
		echo "$pkg not installed. Installing....."
		apt install $pkg -y &> /dev/null
		echo "Status: $pkg is now installed successfully"
	fi
done
