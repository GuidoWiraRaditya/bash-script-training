#!/bin/bash

read -p "Please enter you name: " name

read -p "Enter your age: " age

if [ $age -ge 18 ]; then
    echo "$name I think that you are an adult."
else
    echo "$name I think that You are not an adult"
fi
