#!/bin/bash


IP_LIST_FILE="./7.ip.list"
TODAY=`date +%F`
LOG_FILE="./$HOSTNAME-status-$TODAY"

while IFS= read -r LINE
do
	ping -c 1 -W 3 $LINE > /dev/null 2>&1
	if [ $? = 0 ]
	then
		echo "[$LINE]	UP" | tee -a $LOG_FILE
	else
		echo "[$LINE]	DOWN" | tee -a $LOG_FILE
	fi
done < "$IP_LIST_FILE"


