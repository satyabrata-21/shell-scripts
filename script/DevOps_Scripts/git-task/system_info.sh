#!/bin/bash



echo "Hostname is $HOSTNAME"


echo "OS_info : $(cat /etc/os-release)"

echo "System uptime : $uptime"

echo  "disk usages top five: $(dh -h | head 5)"

echo "Memory Usages : $(free -h)"


