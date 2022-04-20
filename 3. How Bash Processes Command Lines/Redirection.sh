#!/usr/bin/bash

: '
Data Stream
Stream 0 => Standard input(stdin) : <
Stream 1 => Standars output(stdout) : > (delete previous content)
Stream 2 => Standard Error(stderr) : 2>
Append Standard error : 2>>
Standard output and standard error both : &> 
Append Standard output and standard error both : &>> 
Appends standard output of command to file : >> (not delete previous content)


1. Sandard input provides us with an alternative way of providing input to a command
aside from using command line arguments.

2. Standard output contains the data that is produced after a successful command execution.

3. Standard error contains all error message and status messages that a command produces.

                |---------------|======> stdout
==========>stdin|    Command    |
                |---------------|=======> stderr 



Best way to understand read the cheatsheet.
'

cat < Expansion.txt

echo "This is standard output" > output.txt
echo "This is another content" > output.txt
echo "This is another content pro bro" >> output.txt


ed /root
echo
cd /root > error.txt
cd /root 2> error.txt
cat < error.txt


exit 0