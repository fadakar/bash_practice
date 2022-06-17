#!/bin/bash


TODAY= $(date '+%Y%m%d')
LOGFILE= "/home/grf/script1_${HOSTNAME}_${TODAY}.log"
echo "today ---- $TODAY ----"
echo "hello $USER" > ${LOGFILE}
read -p "Enter Your age: " age
echo "You are $age years old" >> ${LOGFILE} 2>&1

echo "append to log and print in screen" | tee -p ${LOGFILE}


