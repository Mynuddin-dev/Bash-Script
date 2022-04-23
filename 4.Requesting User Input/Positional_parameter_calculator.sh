#!/usr/bin/bash

: '

echo $(($1 $5 $2 $5 $3 $5 $4))
echo ${parameter:-word} 1 2 3 
echo ${parameter:-word} 
echo ${parameter:-} 1 2 3 
echo ${parameter:-} 

 ${parameter:-word} Use Default Values. If parameter is unset or null, the expansion of word is substituted. Otherwise, the value of parameter is substituted.
 
'

echo $(( ${2:-0} $1 ${3:-0} $1 ${4:-0} $1 ${5:-0} $1 ${6:-0} $1 ${7:-0} $1 ${8:-0} $1 ${9:-0} $1 ${10:-0} ))





