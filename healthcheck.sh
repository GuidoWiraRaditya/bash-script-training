#! /bin/bash

echo ""
echo "Hello There"
echo "I'm going to do some simple System Healh Check"
echo "Health Check Started....."
echo ""
echo "=======Disk Usage======"
df -h | column -t| head -5
echo ""
echo "======Top Memory CPU Processes====="
ps aux --sort=-%mem | head -5 | awk '{print $1, $2, $3, $4, $5, $6, $7, $8, $9, $10}' | column -t
echo""
echo "=====Top CPU Processes====="
ps aux --sort=-%cpu | head -5 | awk '{print $1, $2, $3, $4, $5, $6, $7, $8, $9, $10}' | column -t
echo""
echo "======System Uptime====="
uptime
echo
