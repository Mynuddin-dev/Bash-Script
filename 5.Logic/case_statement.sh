#!/usr/bin/bash

: '

Case statements provide us with an elegant way to
implement branching logic, and are often more
convenient than creating multiple “elif” statements.


Case statements start and end using the reserved words  “case” and “esac”
The tradeoff, however, is that case statements can only work with 1 variable


Syntax
---------
case "$variable" in # dont forget the $ and the double quotes!
pattern1)
Commands ...
;;
pattern2)
Commands ...
;;
patternN)
Commands ...
;;
*)
Commands ... # run these if no other pattern matches
;;
esac

1. Its very important to remember to use a $ in front of
the variable name otherwise the case statement wont
work, as it cannot access the variables value

2. Remember to wrap the expansion of the variable
name in double quotes to avoid word splitting issues

3. Patterns follow the same rules as globbing patterns.

4. Patterns are evaluated from top to bottom , and only
the commands associated with the first pattern that
matches will be run.

5. *) is used as a “default” case, and is used to hold
commands that should run if no other cases match.


'

read -p "Please enter a number: " number

case "$number" in
"") echo "You didn't enter anything!" ;;
[0-9]) echo "you have entered a single digit number" ;;
[0-9][0-9]) echo "you have entered a two digit number" ;;
[0-9][0-9][0-9]) echo "you have entered a three digit number" ;;
*) echo "you have entered a number that is more than three digits" ;;

esac

# read -p "Enter name of the month : " month

# case $month" in
# January)
# echo " 24th January international Day of Education."
# ;;
# February)
# echo " 20 FebruaryWorld Day of Social Justice ."
# ;;
# March)
# echo "8th March International women’s day."
# ;;
# April)
# echo "7th April The World Health Day"
# ;;
# May)
# echo "The 15 May International Day of Families"
# ;;
# June)
# echo "20th June World Refugee Day"
# ;;
# July)
# echo "11th July World Population Day"
# ;;
# *)
# echo "No matching information found"
# ;;
# esac




# https://phoenixnap.com/kb/bash-case-statement
#you can do it by select command
# echo "Which color do you like best?"
# echo "1 - Blue"
# echo "2 - Red"
# echo "3 - Yellow"
# echo "4 - Green"
# echo "5 - Orange"
# read color;
# case $color in
#   1) echo "Blue is a primary color.";;
#   2) echo "Red is a primary color.";;
#   3) echo "Yellow is a primary color.";;
#   4) echo "Green is a secondary color.";;
#   5) echo "Orange is a secondary color.";;
#   *) echo "This color is not available. Please choose a different one.";; 
# esac
# The “)” is used to terminate a pattern. To separate multiple patterns, “|” operator is used as shown below:


# read -p "Enter the name of a month : " month
# case $month in
#   February)
#  echo "There are 28/29 days in $month.";;
#   April | June | September | November)
# echo "There are 30 days in $month.";;
#   January | March | May | July | August | October | December)
# echo "There are 31 days in $month.";;
#   *)
# echo "Unknown month. Please check if you entered the correct month name: $month";;
# esac


