#!/bin/bash

# run in back
# nohup sh 5.sh &
# scan loopholes
# nmap -p 80 127.0.0.1 | grep '80/tcp' | awk '{print $2}'

n=`netstat -lntp|grep ':80 '|wc -l`
if [ $n -eq 0 ]
then
	# send email to me	
fi

