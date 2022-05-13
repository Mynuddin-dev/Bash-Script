#!/usr/bin/bash

: '
start and end using the reserved words “if” and “fi”
check the exit status of a command and only runs the command if a certain condition is true

Syntax for if statements:

if test1 ; then
C   ommands... # only run if test1 passes
elif test2 ; then
    Commands... # only run if test1 fails and test2 passes
elif testN ; then
    Commands... # only run if all previous tests fail, but testN passes
else
    Commands... # only run if all tests fail
fi

'

read -p "Please enter a number : " number
if [ $number -gt 0 ] ; then
    echo "Your number is greater than 0"
elif [ $number -lt 0 ] ; then
    echo "Your number is less than 0"
elif [ $number -eq 0 ];then
    echo "Your number is 0"
else
    echo "You are not enter integer "

fi

#IF STATEMENTS - COMBINING CONDITIONS:
#It is possible to chain together multiple test commands
#using list operators to create more powerful conditions.