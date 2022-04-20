#!/usr/bin/bash

: '
Upon reaching the globbing stage, bash scans each word for
unquoted special pattern characters. These special pattern
characters are *, ? and [

Any word containing one of these characters is interpreted as a
pattern, and replaced with a list of alphabetically-sorted
filenames that match the pattern (if they exist).

BASIC GLOBBING PATTERN CHARACTER

? => Matches any single character, but requires a character to be there.
* => Matches any string, regardless of length or content. Also matches empty string
[ => Matches any one of the enclosed characters, but requires a character to be there
[!=> Matches any single character except those enclosed in the brackets, but requires a character to be there.
 
Globbing is only perform on words not operator


Consider the following example files:
filea.txt, fileb.txt, filec.txt, file1.txt, file2.txt, file3.txt, fileabc.txt,file123.txt
' 
touch filea.txt fileb.txt filec.txt file1.txt file2.txt file3.txt fileabc.txt file123.txt

ls
echo
ls *
echo
ls *.txt
echo
ls *.pdf
echo
ls file*.txt
echo

ls file?.txt
echo
ls file??.txt
echo
ls file???.txt
echo

ls file[1].txt
echo
ls file[ab].txt
echo
ls file[abc].txt
echo
ls file[abc][abc][abc].txt
echo
ls file[0-9].txt
echo
ls file[a-g].txt
echo


# Character class uses

ls file[[:lower:]].txt
echo
ls file[[:alnum:]].txt
echo
ls file[[:digit:]].txt
echo
ls file[![:digit:]].txt

rm file*.txt
echo
