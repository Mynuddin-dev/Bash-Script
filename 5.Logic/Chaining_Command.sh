#!/usr/bin/bash

: '

CHAINING COMMANDS WITH LIST OPERATORS

LIST : When you put one or more commands on a given line.

LIST OPERATORS : Types of control operators that enable us to create lists of
commands that operate in different ways


1. & => command1 & command2
     => Sends command1 into a subshell to
        run “asynchronously” in the
        background, and continues to process
        command2 in the current shell.

2. ; => command1 ; command2
     => Runs command1 and command2, i.e.
        one after the other. The shell will wait
        for command1 to complete before starting 
        command2.

3. && => command1 && command2
         The “and” operator. The shell will only
         run command2 if command1 is successful 
         (i.e. returns an exit code of 0).

4. || => command1 || command2
      => The “or” operator. The shell will only run
         command2 if command1 is unsuccessful
          (i.e. returns a non-zero exit code).

order : && || & ; 
'

echo 123 & echo 456 # run on terminal again and again to better understanding

echo 123 ; echo 456
ls cmderror ; echo 456
echo 456 ; ls cmderror

echo 123 && echo 456
ls cmderror && echo 456
echo 456 && ls cmderror

echo 456 || echo 789
ls 456 || echo 789
echo 456 || ls 789