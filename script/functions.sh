#!/bin/bash

<< usage 
./function.sh hello
inside function call
install_package docker.io

usage

echo "$1 is the main argument passws to the script"


install_package() {

	echo "$1 is the local argument passed to function"

sudo apt-get install $1 
}

# function call

install_package nginx
