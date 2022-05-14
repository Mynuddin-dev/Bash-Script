#!/usr/bin/bash

: '
#get option

# However, getopts does not get all the options at once; it
# only gets the very next option on the command line each
# time it is run

first run first option
second run second option 
so we can use while loop

Therefore, the getopts command is often used as part of a
while loop, to ensure that all command line options are
processed

Syntax for optstrings
Any "single letter" we place in the optstring is considered as
its own option.

getopts can only process one-letter options (long-form
options such as --all are not supported.)

Notice how options are case-sensitive.

'
#getopts "option string" variable

while getopts "f:c:" opt; do 
    # if option is valid it saved in opt variable
    # if invalid option,our opt variable will have a question mark stored inside it.
    # Whatever argument that is provided with an option is
    # stored in the $OPTARG shell variable.

    case "$opt" in
        # convert from celsius to farenheit
        c) result=$(echo "scale=2; ($OPTARG * (9 / 5)) + 32" | bc);;
        
        # convert from fahrenheit to celsius
        f) result=$(echo "scale=2; ($OPTARG - 32) * (5/9)" | bc);;
        \?) echo "Invalid option provided";;
    esac

done
echo $result

: '
Therefore, it is good practice to create a \? case to
respond to any invalid options. The backslash (\) ensures
that the ? is interpreted literally, and not as a special
globbing pattern character.

'