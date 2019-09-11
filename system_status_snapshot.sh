#!/bin/sh
FOLDER=$(hostname)_$(date +"%F_%T")
mkdir -p $FOLDER

free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }' > $FOLDER/overview.txt
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}' >> $FOLDER/overview.txt
# top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}' >> $FOLDER/overview.txt

# individual
top -bn1 -o RES -c > $FOLDER/top.txt
