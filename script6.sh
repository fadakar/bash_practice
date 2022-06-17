#!/bin/bash


for i in {1..10}
do
	if [ $i -eq 3 ]
       	then
	       	continue
       	fi

	if [ $i -gt 8 ]
       	then
	       	break
       	fi
	echo "i= $i"
done



