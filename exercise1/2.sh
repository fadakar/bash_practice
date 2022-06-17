#!/bin/bash

MIN="null"
MAX="null"
for I in {1..10}
do
	read -p "Enter Your Number $I: " NUM
	if [ $MIN = "null" ] && [ $MAX = "null" ] 
	then
		MIN=$NUM
		MAX=$NUM
	fi
	if [ $NUM -lt $MIN ]
	then
		MIN=$NUM
	fi
	if [ $NUM -gt $MAX ]
	then
		MAX=$NUM
	fi
done	


echo "Max Number is $MAX"
echo "Min Number is $MIN"

