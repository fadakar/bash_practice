#!/bin/bash

read -p "Enter Your Number: " VAR1

if [ $VAR1 -gt 10 ]
then
	echo "$VAR1 greater than 10"
elif [ $VAR1 -lt 10 ]
then
	echo "$VAR1  less than 10"
else
	echo "$VAR1 equal to 10"
fi
