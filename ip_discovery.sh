#!/bin/bash

if [ $# != 1 ]; then
	printf "Usage: $0 192.168.0"
else
	for i in {1..254}; do
		#(ping -c 1 $1.$i 2>/dev/null | grep -i "ttl" | cut -d ' ' -f4 | tr -d ':') &
		(ping -c 1 $1.$i > /dev/null 2>&1 && echo "Host $1.$i is Up") &	
	done	
	wait
fi
