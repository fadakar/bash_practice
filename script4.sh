#!/bin/bash


if [ $# != 2 ]
then
        echo "enter two number to compare"
	kill $$
fi

if [ $1 -eq $2 ] 
then
	echo "numbers equal"
elif [ $1 -gt $2 ] 
then
	echo "number 1 greater than 2"
elif [ $1 -lt $2 ]
then	
	echo "number 1 less than 2"
fi

