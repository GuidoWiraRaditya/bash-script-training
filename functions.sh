#!/bin/bash

ask_number() {
	read -p "first number : " first
	read -p "second number : " second
}

ask_operation() {
	read -p "what kind of operation do you want? (add, subs) " operation
}

count() {

	if [ $operation = "add" ]; then
		echo "the answer is: " $((first+second))
	elif [ $operation = "subs" ]; then
		echo "the answer is: " $((first-second))
	else  ask_operation
		  count
	fi
}

ask_number
ask_operation
count