#!/bin/bash


IP_LIST_FILE="./7.ip.list"
TODAY=`date +%F`
LOG_FILE="./$HOSTNAME-status-$TODAY"

while IFS= read -r line
do
	ping -c 1 -W 3 $line > /dev/null 2>&1
	if [ $? = 0 ]
	then
		echo "[$line]	UP" | tee -a $LOG_FILE
	else
		echo "[$line]	DOWN" | tee -a $LOG_FILE
	fi
done < "$IP_LIST_FILE"


