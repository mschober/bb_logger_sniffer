#!/bin/bash

##represents a single stop
#1
#2
#3
#4
#5


while(true); do

STOP_COUNT=`wc -l stop_log_rout_1`
echo $STOP_COUNT

sleep 1

NEXT_STOP_COUNT=`wc -l stop_log_rout_1`

if [[ $STOP_COUNT != $NEXT_STOP_COUNT ]]; then
    echo changed 
    LAST_LINE=`tail -1 stop_log_rout_1`
#    echo $LAST_LINE
    BUS_ID=`echo $LAST_LINE | cut -d ' ' -f2`
    echo real bus id $BUS_ID
    echo "!! USING REAL LIKE BUS_ID: 1234 !!"
    BUS_ID=1234
    echo "running our java code with BUS_ID: $BUS_ID" 
else
    echo same
fi

done
