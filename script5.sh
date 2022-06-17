#!/bin/bash



ping -c 1 -W 1 $1 > /dev/null

if [ $? = 0 ] 
then
	echo "server $1 is reachable"
else
	echo "server $1 not reachable"
fi

