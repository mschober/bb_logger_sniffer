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

[[ $STOP_COUNT != $NEXT_STOP_COUNT ]] && echo changed || echo same

#
#  snedQuery( stop )
#
done
#
#
