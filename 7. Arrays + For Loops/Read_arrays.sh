#!/usr/bin/bash


# The readarray command converts what it reads on its standard input stream into an array.

# Create an array from a file
# readarray -t arrayname < file

readarray -t days < days.txt
echo ${days[@]}
echo ${!days[@]}

echo ${days[@]@Q} # invisiable character (run these command on terminal [Read array with -t and without -t])

# run all in the terminal individually


# CREATING An array from the output of a command
# This is achieved using a technique known as “process
# substitution”. Process substitution simply allows us to
# treat the output of a command (or commands) as a file.

# Syntax for process substitution
# <(command) # You can run one command...
# <(command1 | command2 | ... | commandN) #... Or an entire pipeline

mkdir array
cd array
touch file{001..100}.txt
ls ~/Documents/bash_course/"7. Arrays + For Loops"/array/*

readarray files <  <(ls ~/Documents/bash_course/"7. Arrays + For Loops"/array)
echo ${files[@]}
echo ${!files[@]}

echo ${files[@]@Q}

# A NOTE ABOUT NEWLINE CHARACTERS
# By default, when the readarray command reads a file (or
# process substitution), it will save each entire line as a new
# array element, including the invisible newline character
# at the end of the line.
# Storing new lines characters can cause issues when it
# comes to formatting, so it is best to remove them.
# Therefore, it is suggested that you always use the readarray
# command’s -t option unless you have a strong reason
# otherwise. This will prevent any newline characters from
# being stored in your array values, and help prevent issues
# down the road.


readarray -t files <  <(ls ~/Documents/bash_course/"7. Arrays + For Loops"/array)
echo ${files[@]}
echo ${!files[@]}

echo ${files[@]@Q}