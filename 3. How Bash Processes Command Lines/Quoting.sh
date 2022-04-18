#!/usr/bin/bash

: '
During quote removal, the shell removes all unquoted
backslashes, single quote characters , and double quote
characters that did NOT result from a shell expansion.

echo “hello” => Result echo hello
echo ‘ “hello” ’=> Result echo “hello”
echo \”hello\” => Result echo "hello"

1.Backslash(\): Removes the special meaning from next character.
2.Single Quotes(''): Removes special meaning from all character inside.
3.Double Quotes("") : Removes special meaning from all, except dollar sign($) and backtricks(`)


'

echo john \& jane
path='C:\Users\mynuddin-workstation\Documents'
echo $path
path="C:\Users\mynuddin-workstation\Documents"
echo $path
path=C:\\Users\\mynuddin-workstation\\Documents
echo $path
echo "hello"
echo '"hello"'