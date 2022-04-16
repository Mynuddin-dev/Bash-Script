#!/usr/bin/bash
#A way of automatically generating text according to a certain pattern.

#1.String list : can contain any set of individual character or words

echo {a,45,z,asish,404,Mynuddin}
echo {jan,feb,mar,apr,may,jun,july}
echo
echo {jan,feb,mar,apr,may,jun, july}
echo { jan,feb,mar,apr,may,jun,july}
echo
#2.Range list : are useful for rapidly expanding out sequences of characters that follow a particular order
#like A-Z or 1-100.....

echo {1,2,3,4,5,6,7,8,9,10}
echo {1..10}
echo {10..1}
echo {a..z}
echo {A..Z}
echo {A..C}{1..2}
echo
echo {0..100..3}
echo {jan..dec}
echo
# Using Preamble
echo Mynu{1..5}
echo Mynu{1,5,9}

#Using Postscript
echo {1..5}Mynu
echo {1,5,9}Mynu
# combined
echo
echo a{d,c,b}e
echo Md{1..5}Mynu
echo Md{1,5,9}Mynu


echo
echo month{01..12}
cd Journal
echo This directory :$PWD
mkdir month{01..12}
ls
echo month{01..12}/day{01..31}.txt
touch month{01..12}/day{01..31}.txt
ls month01


exit 0