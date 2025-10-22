#!/bin/bash
LOGIN_COUNT=$(who | wc -l)
PROCESS_COUNT=$(ps -eo user | wc -l)
echo "Number of logged in users: $LOGIN_COUNT"
echo "Number of process : $PROCESS_COUNT"
