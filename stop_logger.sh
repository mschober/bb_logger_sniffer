#!/bin/bash

function sleep_for {
    echo $(( $RANDOM / 10000 ))
}

for i in {1..20}; do
    echo $i | tee -a stop_log_rout_1
    sleep `sleep_for`
done
