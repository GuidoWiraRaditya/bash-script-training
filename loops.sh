#!/bin/bash

for i in 1 2 3 4 5 6 7 8 9
do
	echo "Current queue: $i"
	echo ""
done


read -p "Count to how much?" max
count=0
while [ $count -le $max ]
do
	echo "Count: $count"
	count=$((count + 1))
done