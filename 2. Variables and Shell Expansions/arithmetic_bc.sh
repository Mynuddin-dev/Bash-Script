#!/usr/bin/bash

# BC, which stands for Basic Calculator, is a command in Bash that is used to provide the functionality of a scientific
# calculator within a Bash script. This can be useful for scripting with various arithmentic use cases and scenarios
# echo "expression" | bc
# echo "scale=value; expression" | bc

echo "5.5/2" | bc
echo "scale=2; 5/2" | bc
echo "scale=2; 4.2^2" | bc
echo "scale=2;10.42/3.45" | bc
echo 
echo "10 < 5" | bc
echo "10 > 5" | bc
echo "10 < 5" | bc
echo
x=`echo "var=500;var%=7;var" | bc`
echo $x 

echo "var=5;var^=3;var" | bc

# https://www.geeksforgeeks.org/bc-command-linux-examples/