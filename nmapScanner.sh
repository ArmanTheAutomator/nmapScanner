#!/bin/bash

: '
This script will do a basic scan of the input IP address. 
The output of the scan will be appended to the end of the scan.txt file.
'

echo "What is your IP address?"
read inet

#nmap scan the ip address
nmap $inet >> scan.txt
nmap_exit_status=$?

#check if the scan went through
if [ "$nmap_exit_status" -eq 0 ]; then
	echo "Your scan results are inside the scan.txt file."
else
	echo "There was an error with the scan."
fi

