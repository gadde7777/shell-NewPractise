#!/bin/bash
START_TIME=$(date +%s)

echo "Script Executed at Timestamp : $START_TIME"

sleep 10

END_TIME=$(DATE +%S)

Total_time=$($END_TIME -$START_TIME)

echo "Script Executed in : $Total_time"