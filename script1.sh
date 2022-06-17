#!/bin/bash

LOGFILE= "/home/grf/script.log"
TODAY= `date +%Y%m%d`
echo "today ---- $TODAY ----"
echo "hello $USER" > ${LOGFILE}
read -p "Enter Your age: " age
echo "You are $age years old" >> ${LOGFILE} 2>&1

echo "append to log and print in screen" | tee -p ${LOGFILE}


