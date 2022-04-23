#!/usr/bin/bash

read -p "What is your first name?:" firstname
read -p "What is your Last name?:" lastname

PS3="Which type of phone you use?: "
select phone in headset handheld;do
    echo "The phone you use $phone"
    break
done

PS3="From which department you come?: "
select department in "finance" "sales" "Custom Services" "engineering";do
    echo "You are from $department department!!"
    break
done


read -N 4 -p "What is your extension? (must be 4 digits): " ext
echo # for formatting
read -N 4 -s -p "What access code would you like to use when dialling in (must be 4 digits)?: " access
echo # for formatting

echo "$firstname,$lastname,$phone,$department,$ext,$access" >> extensions.csv
