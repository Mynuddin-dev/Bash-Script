#! /usr/bin/bash

 
echo "Welcome to bash Scripting Learning"

#echo "Welcome to bash Scripting Learning" > file.txt

echo "Single line command execute"

# This is a comment bro
#./ means in this directory

: '
Here is the Multiline Comment
SO lets learn how to comment Multiline
Okhey Bro ?
ok

Three Core Components :
1.Begaining : Shebang Line #! /usr/bin/bash
2.Middle : command
3.End : Exit statement 0 means successfull 1-255 means unsuccessfull

As well as the 5 pieces of professional information:
1.Author
2.Date Created
3.Last Modified
4.Description
5.Usage

Linux file permission calculator:https: //chmod-calculator.com/

- --- --- ---

Part1.- (means simply file) , d(directory)
Part2.Owner permission(read,write,execute => rwx)
Part3.Group Permission(read,write,execute => rwx)
Part4.Others permission(read,write,execute => rwx)

Most important part in this section is =>  Adding scripts to my (default machine) PATH
change the path in .profile file or .bashrc file. After adding path, your every command run from (specific dir) specified path.



'

echo "After Multiline cmnt execute"
exit 0
