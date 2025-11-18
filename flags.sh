#!/bin/bash

information() {
    echo "Use flag to choose what you want to do"
    echo "-a: print colorful text"
    echo "-b: mathematics stuf"
    echo "-c: computer healthcheck"
}

while getopts "abc" option; do
    case $option in
        a) ./learn-variable.sh ;;
        b) ./functions.sh ;;
        c) ./healthcheck.sh ;;
        *) information ;;
    esac
done