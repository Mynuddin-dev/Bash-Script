#! /usr/bin/bash
: ' 
DEFINITION :
Parameter expansion is used to retrieve the value stored in a parameter
Shell Parameter Expansion : https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
Simple Syntax: $parameter
Advanced Syntax: ${parameter}

' 
echo $LOGNAME
echo $OSTYPE
name="MynuDdin"
echo $name
echo ${name,}   # first letter lower case
echo ${name,,}  # all lower case

echo $USER
echo ${USER^}   # first letter upper case
echo ${USER^^}  # all upper case
echo ${#USER}   # how many character contains

# Slicing or substring
# ${parameter : offset : length}

numbers=0123456789ABCDEFGHIJ
echo ${numbers:0:5}
echo ${numbers:5}
echo ${numbers:3:3}
echo ${numbers: -5:4} # notice the space
echo ${numbers: -4}
echo ${numbers: -10:-1}

echo ${1:7}

exit 0
