#!/bin/bash



echo "=========System resources checking========="

check_disk() {
	echo "Checking disk usage of / "
	df -h /
	
}

check_disk
