#!/bin/bash

read -pr "What is your first name?:  firstname
read -pr "What is your last name?: " lastname
read -Nr 4 -p "What is your extension? (must be 4 digits): " ext
echo # for formatting
read -Nr 4 -s -p "What access code would you like to use when dialling in (must be 4 digits)?: " access
echo # for formatting
echo $firstname,$lastname,$ext,$access >> extensions.csv


: '

# https://www.shellcheck.net/

on the terminal : shellcheck filename
#Example
shellcheck 2.get_extensions_broken.sh
 
 
#!/bin/bash
read -pr "What is your first name?:"  firstname
read -pr "What is your last name?: " lastname
read -Nr 4 -p "What is your extension? (must be 4 digits): " ext
echo # for formatting
read -Nr 4 -s -p "What access code would you like to use when dialling in (must be 4 digits)?: " access
echo # for formatting

echo "$firstname","$lastname","$ext","$access" >> extensions.csv


'
