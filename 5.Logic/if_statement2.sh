#!/usr/bin/bash

#It is possible to chain together multiple test commands
# using list operators to create more powerful conditions

# Combine && and || operator

echo "same">file1.txt
# echo "same">file2.txt
echo "Dontsame">file2.txt
echo "same">file3.txt

a=$(cat file1.txt)
b=$(cat file2.txt)
c=$(cat file3.txt)


# if [ $a = $b ] && [ $a = $c ];then

if [ $a = $b ] || [ $a = $c ];then
    echo "file match"
else
    echo "file doesn't match"

fi
