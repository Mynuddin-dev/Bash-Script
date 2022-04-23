#!/usr/bin/bash
: '

Parameters that bash gives special meaning

$0 => store the script name
      Example : test.sh 1 2 3   => test.sh

$# => Expand to the number of positional parameters
      that have been provided to the script.
      Stores the number of command line arguments provided to the script
      Example : example.sh 1 2 3    => 3 (how many num of arg i have provide just count this)



------------------------------ For better understanding check special parameter calculator -------------------------------------

$@ => Expands to each positional parameter as its own word with subsequent word splitting
      Example : example.sh "daily reports" => daily reports (2 words)


“$@” => Expands to each positional parameter as its own word without subsequent word splitting
        Example : example.sh "daily reports" => daily reports(1 word)

$*   => Exactly the same as $@ 
        Example : example.sh "daily reports" => daily reports(2 words)

“$*” => Expands to all positional parameter as one word separated by the first
        letter of the IFS variable without subsequent word splitting
        Example : IFS= ,
        example.sh “daily reports” => daily,reports(1 word)

$? =>   Gives the exit code returned by the most recent command
        Example : echo “hello”
                  echo $?
                  => 0(because echo “hello” was successful)


'
# echo $#
# echo $0

# echo $0 run it on the terminal

echo $@   "=> 2 words" #Two words
echo "$@" "=> 1 word"  #Single word
echo $*   "=> 2 words" #Two words
echo "$*" "=> 1 word"  #Single word

echo "hello"
echo $?