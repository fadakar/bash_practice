#!/bin/bash 



FILE="/etc/passwd"
HOST=$1
USER=$2
PD=$3

if [ $# -ne 3 ]
then
	echo "Usage: script.sh host user password"
	exit
fi


ping -c 1 -W 3 $HOST > /dev/null
if [ $? = 0 ]
then
	/usr/bin/expect << EOF
	spawn scp $FILE $USER@$HOST:/home/$USER
	expect "*password*"
	send "$PD\r"
	expect "*\r"
	expect "\r"
EOF
else
	echo "Server[ $HOST ] not reachable"
fi
