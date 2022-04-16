#! /usr/bin/bash

: '

Shell variables or system variables
1.Bourne shell variable
2.Bash shell variable

SOME COMMON SHELL VARIABLES

HOME : Absolute path to the current users home directory
PATH : List of directories that the shell should search for executable files
USER : The current users username
HOSTNAME : The name of the current machine
HOSTTYPE : The current machines CPU architecture
PS1 : The terminal prompt string


User Define variable
name=value
no blank spaces between = sign
variable name always lower case
${student}(reference the variable)this is called parameter expansion
Shell Parameter Expansion : https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
The ‘$’ character introduces parameter expansion, command substitution, or arithmetic expansion. The parameter name or symbol to
be expanded may be enclosed in braces, which are optional but serve to protect the variable to be expanded from characters
immediately following it which could be interpreted as part of the name.


Variabele Allow us to store useful data under convenient names
Shell expension are very powerful feature that allow us to retrive data process command output and perform calculations

Three types of shell parameter 
1.Variables : a parameter whose values you can manually change
2.Positional parameters
3.Special parameters

'
echo "User define variables"
echo "---------------------"
student="Md Mynuddin"
echo "Hello ${student}"
echo "Hello $student"
echo Hello $student
a=10
echo value of a:$a

