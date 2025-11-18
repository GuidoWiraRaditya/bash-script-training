#!/bin/bash

read -p "What's your name? Please type it now: " name
echo "I see... so your name is $name"

read -p "how much do you want to count to? Please type it now " max
count=0
	while [ $count -le $max ]
	do
		echo "Current number: $count"
		count=$((count + 1))
	done

read -p "What folder are you looking for: " folder
if [ -d "$folder" ]; then
	echo "Folder found"
else
	echo "Folder not found, I'll create it now"
	mkdir "$folder"
	echo "folder created"
fi

