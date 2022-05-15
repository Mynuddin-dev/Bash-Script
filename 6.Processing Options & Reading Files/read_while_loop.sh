#!/usr/bin/bash
: '
1. Combination of read and while loops command

2. Read-while loops are simply while loops that use the read
command as their test command

3. Use read-While loops to iterate over the contens of files
4. Use read-while loops + process substitution to iterate over the output of commands

while read -r variable;
do
   echo "$line" ;
done < input.file

'

while read -r line;
do
   echo $line;
   sleep 1s
done < os.txt
# done < "$1" need toprovide file name when run 


# Process substitutions
echo ""
echo "Process substitutions"
echo "----------------------"
while read -r line;
do
   echo $line;
done < <(ls $HOME)