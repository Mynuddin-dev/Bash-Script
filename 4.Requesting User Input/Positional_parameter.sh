#!/usr/bin/bash

echo “My Name is $1”
echo “My home directory is $2”
echo “My favourite colour is $3”


# run it ./Positional_parameter Mynuddin $HOME Blue

echo "The 10th argument is 10th : ${10}"
echo "The 11th argument is 11th : $11"

: '

=> Command line arguments are information "you give to your script
   from your command line". Each argument is separated by space.
=> Positional parameter are parameter set by the shell to store the 
   value of each of these command line arguments.
=> That you cant save data is positional parameter manually.
=> However, you can refer to values held by the positional parameters
   using parameter expansion.
=> You need to use the advanced "dollar-curlybrace" syntax for 
   positional parameters 10 and above.

'