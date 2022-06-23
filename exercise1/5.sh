#!/bin/bash

TODAY=`date +%F`
LAST_DATE=`date --date="3 day ago" +%F`
FILE="./passwd-$TODAY.bak"
FILE_DELETE="./passwd-$LAST_DATE.bak"

# create new backup for today col 1,3
cat /etc/passwd | cut -d ":" -f 1,3 > $FILE
rm $FILE_DELETE > /dev/null 2>&1
