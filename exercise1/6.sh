#!/bin/bash
# to run every login for all users add this line to users .bashrc
# source /path/to/6.sh

LOGGED_IN_USERS=`who | sort --key=1,1 --unique | wc --lines`
echo $'\n'
echo "----------- Welcome ${USER} ---------------"
echo "Today is `date +%F`"
echo "$LOGGED_IN_USERS user now loggged in"
echo $'\n'
