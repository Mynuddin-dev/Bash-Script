#!/usr/bin/bash
: '
Test provides no output, but returns an exit status of 0 for "true" (test successful) and 1 for "false" (test failed).

The test command takes an EXPRESSION as an argument. After calculating the EXPRESSION, the test returns a value to the 
bash variable “$?”. If the value is 0, then the expression evaluation was true. If the value is 1, then the expression
evaluation was false.

Test commands :“a command that can be used in bash to compare different pieces of information”
That allows us to do some logical checks with our scripts, and they are also the foundation of the conditional statement
 

There are two syntaxes for using the test command.
=> test EXPRESSION
=> [ EXPRESSION ]

[  ] Note : Space after[ and space before ]

1.Decimal/Integer Number test operators
-eq => Equal
-ne => not equal
-gt => Greater than
-lt => Less than
-geq => Greater than or equal
-leq => Less than or equal


0 means True
1 means False
$? Last command output


2.String Test Operators
= =>equal
!= => Not Equal 
-z => Check a string empty or not
-n => Match non empty string


3.File Test Operators Compare files
-e => exists
-f => exists and is a regular file
-d => exists and is a directory
-x => exists and is executable by the current user. 

Run those command on terminal

'
#Integer Number test Operators
test 2 -eq 2 ; echo $?

[ 2 -eq 2 ]; echo $?
[ 1 -eq 2 ]; echo $?
[ 1 -ne 2 ]; echo $?
[ 2 -ne 2 ]; echo $?
[ 4 -geq 4]; echo $?

echo

# String Test Operators
a=hello;b=goodbye;[[ $a = $b ]];echo $?
a=hello;b=goodbye;[[ $a != $b ]];echo $?
echo

[[ -z $c ]];echo $?
c=anythings
[[ -z $c ]];echo $?

echo
[[ -n $c ]];echo $?

# File test operators
[[ -e file.txt ]]; echo $?
[[ -a file.txt ]]; echo $?

touch file.txt
test -e file.txt ; echo $?
test -f file.txt ; echo $?
test -d file.txt ; echo $?
test -x file.txt ; echo $?
chmod 754 file.txt
test -x file.txt ; echo $?



