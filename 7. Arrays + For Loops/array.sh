#!/usr/bin/bash

: '
Variables : can only store one piece of data at a time.

Arrays : can store multiple different values at the same time.

Syntax
array=(element1 element2 element3 ... elementN)

index start from 0


'

array=(1 2 3 4 5)

# Gives the first element of an array
echo ${array}

# Expands to all the elements of an array
echo ${array[@]}

# Expands to all the index numbers of all the elements of an array
echo ${!array[@]}

# Starts at the index specified by offset rather
# than at index 0, and then continue until the
# end of array[@] > ${array[@]:offset}

echo ${array[@]:2}

# Negative offset
# Note: You must have a space after the and before the “-”.
echo ${array[@]: - 2} # space should be notice

# ${array[@]:offset:length}

echo ${array[@]:2:2}
echo ${array[@]:2:3}


# Modify an array
# ---------------
# Append 6 to the end of array
array+=(6)   # array+=6 > give you 16
echo ${array[@]}

array+=(a b c d)
echo ${array[@]}

# Removes the specified element from the array
unset array[2]
echo value ${array[@]}
echo index ${!array[@]}
# Note: Index numbers do not
# update automatically, so this will
# create a gap in the indexes!


# Changes the value element of the array. of a specific
array[0]="Mynu:"
echo ${array[@]}