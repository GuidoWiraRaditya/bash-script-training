#!/bin/bash

ask_number() {
	read -p "first number : " first
	read -p "second number : " second
}

ask_operation() {
	read -p "what kind of operation do you want? (add, subs, divide) " operation
}

count() {
	ask_number
	ask_operation

	if [ $operation = "add" ]; then
		echo "the answer is: " $((first+second))
	elif [ $operation = subs ]; then
		echo "the answer is: " $((first-second))
	elif [ $operation = subs ]; then 
		echo "the answer is: " $((first/second))
	else  ask_operation
		  count
	fi
}
count
