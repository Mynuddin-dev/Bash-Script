#! /usr/bin/bash

# Syntax : $(command)
# Command substitution is a shell feature that allows you to grab the output of a command into user define variables
# Use command substitution to use the output of one command inside another command


time=$(date +%H:%M:%S)
echo "Hello $USER, the time right now is $time"

var1=$(echo "Genuity")
var2=$(echo "System")
var3=$(echo "Limited")

echo "$var1  $var2  $var3"
echo Even Numbers : $(seq 2 2 40)

exit 0