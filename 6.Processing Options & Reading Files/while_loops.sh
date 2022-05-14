#!/usr/bin/bash

: ' 
while loops run a set of commands while a certain
condition is true, hence their name.

while loops will continue to run until either:
1. The condition command that they’re provided with
becomes false (i.e. returns a non-zero exit code)
2. The loop is interrupted.

Syntax

while [ condition ]; do
    commands...
done

'
# 1. Example

read -p "Enter your number: " num

while [ "$num" -lt 20 ]; do

    echo "$num"

    # num=$(( "$num" + 1 ))
    ((num++))

done

# In a single line
# while [ "$num" -lt 20 ]; do echo "$num"; num=$(( "$num" + 1 ));done
# terminate the while loop > become false to avoid infinite loops

#2. Factorial
# read -p "Enter your number: " num
# factorial=1
# while [ "$num" -gt 0 ]; do

#     factorial=$(($factorial*$num))
#     num=$(($num-1))
# done
# echo "factorial : $factorial"



#3. infinite loop
# while :
# do
# 	echo "infinite loops [ hit CTRL+Z to stop]"
# done

: '

# break
# Initialize the counter
n=1
# Iterate the loop for 10 times
while [ $n -le 10 ]
do
    # Check the value of n
    if [ $n == 6 ]
    then
        echo "terminated"      
        break
    fi
    # Print the current value of n
    echo "Position: $n"
    # Increment the value of n by 1
    (( n++ ))
done



# continue
# Initialize the counter
n=0
# Iterate the loop for 5 times
while [ $n -le 5 ]
do
    # Increment the value of n by 1
    (( n++ ))
   
    # Check the value of n
    if [ $n == 3 ]
    then
        continue
    fi
    # Print the current value of n
    echo "Position: $n"
   
done

'
