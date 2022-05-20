#!/bin/bash
: '

Shellcheck is able to:
1.Check if your script contains synt
ax errors
2.Identify potential issues and make suggestions to improve your script

Shellcheck is not able to:
Detect issues with the environment that the script will be running in
Environment issues
1.If a specific file or folder exists
2.How permission are setup
3.if a specific command or application is installed


'

while getopts "f:c:t:" opt; do
case "$opt" in
        c) result=$(echo "scale=2; ($OPTARG * (9 / 5)) + 32" | bc);;
        f) result=$(echo "scale=2; ($OPTARG - 32) * (5/9)" | bc);;
        \?);;
    done
esac
echo "$result"


: '
https://www.shellcheck.net/

on the terminal : shellcheck filename
#Example
shellcheck 1.temp_conv_broken.sh

# Solution
#!/bin/bash

while getopts "f:c:t:" opt; do
case "$opt" in
        f) result=$(echo "scale=2; ($OPTARG - 32) * (5/9)" | bc);;
        c) result=$(echo "scale=2; ($OPTARG * (9 / 5)) + 32" | bc);;
        t) ;;
       
        \?);;
esac
    done


echo "$result"
'