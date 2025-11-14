#! /bin/bash

echo ""
echo -e "\e[32mHello There"
echo -e "I'm going to do some simple System Healh Check"
echo -e "Health Check Started.....\e[0m"
echo ""
echo -e "\e[1;33m=======Disk Usage======\e[0m"
df -h | column -t| head -5
echo ""
echo -e "\e[1;33m======Top Memory CPU Processes=====\e[0m"
ps aux --sort=-%mem | head -5 | awk '{print $1, $2, $3, $4, $5, $6, $7, $8, $9, $10}' | column -t
echo""
echo -e "\e[1;33m=====Top CPU Processes=====\e[0m"
ps aux --sort=-%cpu | head -5 | awk '{print $1, $2, $3, $4, $5, $6, $7, $8, $9, $10}' | column -t
echo""
echo -e "\e[1;33m======System Uptime=====\e[0m"
uptime
echo
