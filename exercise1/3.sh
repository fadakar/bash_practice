#!/bin/bash 



FILE=$1
HOST=$2
USER=$3
PD=$4


/usr/bin/expect << EOF 
spawn scp $FILE $USER@$HOST:/home/$USER
expect "*password*"
send "$PD\r"
expect "*\r"
expect "\r"
EOF
