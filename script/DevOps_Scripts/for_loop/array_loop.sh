#!/bin/bash


server=("web1" "web2" "web3")
for server in "${server[@]}"
do
	echo "Deploying to $server"
done
