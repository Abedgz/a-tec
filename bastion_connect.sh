#!/bin/bash
eval `ssh-agent -s`
ssh-add -k abed_pem
if [ -n "$2" ]; then
	/usr/bin/ssh -J $1 $2
elif [[ -n "$1" && -z "$2" ]]; then
	/usr/bin/ssh $1
else
	echo "Please provide bastion IP address"
fi