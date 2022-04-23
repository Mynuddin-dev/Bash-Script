#!/usr/bin/bash

: ' 
The select command provides the user with a dropdown
menu to select from. The user may select an option from
a list of options.

It is also possible to provide a prompt to a user using the
PS3 shell variable.


Syntax for the select command:

PS3="Please select an option below: "
select variable in options ; do
commands...
break
done


select day in mon tue wed thu fri sat sun;
do
echo "The day of the week is $day"
break
done

'

PS3="What is the day of the week?: "
select day in mon tue wed thu fri sat sun ; do
    echo "The day of the week is $day"
    break
done
