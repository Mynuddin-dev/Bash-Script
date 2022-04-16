#! /usr/bin/bash

: '
Shell variables or system variables
1.Bourne shell variable 
Bourne Shell : created by stephen bourne 1979
    > 10 in total Bourne shell variable 
    > https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Variables.html#Bourne-Shell-Variables


2.Bash shell variable
    > Bash shell : based on the bourne shell
    > Bourne Again SHell 
    > Around 95 in total variables
    > https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#Bash-Variables

SOME COMMON SHELL VARIABLES

HOME : Absolute path to the current users home directory
PATH : List of directories that the shell should search for executable files
USER : The current users username
HOSTNAME : The name of the current machine
HOSTTYPE : The current machines CPU architecture
PS1 : The terminal prompt string


'
echo "Bash Shells variables"
echo "-----------------------"
echo Our shell name is :$BASH
echo Our shell name is :$BASHOPTS
echo Our shell name is :$BASHPID
echo Our shell name is :$BASH_ARGC
echo Our shell name is :$BASH_VERSION
echo Our shell name is :$BASH_COMMAND
echo "\n"
echo "BOURNE Shells variables"
echo "-----------------------"
echo Our home directory is :$HOME
echo System path is:$PATH
echo User :$USER
echo Hostname :$HOSTNAME
echo Hosttype :$HOSTTYPE
echo Present working directory:$PWD



exit 0
