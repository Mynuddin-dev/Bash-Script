#!/usr/bin/bash

: '
A for loop iterates over a list of words or elements and
performs a set of commands for each element within
that list, hence its name.
'


# for loop syntax (without array):
# ===================================
# for <variable> in value1 value2 value3; do
#     commands...
# done

for element in first second third;do
    echo "This is $element element"
done


# forloop syntax (with array):
# ===================================
# for element in "${array[@]}"; do
#     commands...
# done

readarray -t files < file.txt

for f in ${files[@]};do
    if [ -f "$f" ];then 
        echo "$f file is already exist"
    else 
        touch "$f"
        echo "$f file was created"
    fi 
done