#!/bin/bash

PROCESSES=$(ps aux | head -20)
echo "$PROCESSES"
echo "Enter PID to kill"
read PID
kill -9 $PID
echo " Killed process $PID"

