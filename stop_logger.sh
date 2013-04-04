#!/bin/bash

function sleep_for {
    echo $(( $RANDOM / 10000 ))
}

for i in {1..20}; do
    echo "$i <BUS_ID_3>" | tee -a stop_log_rout_1
    sleep `sleep_for`
done
