#!/usr/bin/bash

read -p "What is your first name?:" firstname
read -p "What is your Last name?:" lastname

read -N 4 -p "What is your extension number(4 digit)?:" ext_num
echo
read -N 4 -s -p "What access code would you like to use when dialing in(4 digit)?:" access_code
echo
echo $firstname,$lastname,$ext_num,$access_code >> extension.csv
