#!/usr/bin/bash

: '

The read command asks for input from the user and saves
this input into a variable

Syntax for the read command:
read variable

1. => -p “prompt” : Displays a prompt to user about what information
                  they must enter.

2. => -t : Time Timeout if the user does not enter any value within
          time seconds.

3. => -s : Prevent the input that the user enters from being
           shown in the terminal. The “secret” option.

4. => -N chars : Limit the users response to exactly chars characters

5. => -n chars : Limit the users response to a maximum of
                 chars characters


By default , the input from the user is saved in the reply variable.

'
# read name age town

read -s -t 10 -p "Input your first name: " name
read -s -t 5 -p "Input your age: " age
read -s -t 10 -p "Input your town: " town 

# Secrete =>timeout 5 sec => Prompt


echo "My name is $name"
echo "My age is $age"
echo "And i am from $town"

 

