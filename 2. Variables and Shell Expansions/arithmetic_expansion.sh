#!/bin/bash

# parameter expansion : ${parameter}
# command substitutions : $(command)
# arithmetic expansion : $((expression))
# Order : () => ** => *,/,% => +,-

echo $((2 + 3))
X=2
Y=3
echo $(($X + $Y))
echo $((X * Y))
echo $(($X ** $Y))
echo $((2 + 4 * 3))
echo $(((2 + 4) * 3))
echo $((4 / 2))
echo $((4 % 2))
echo
echo $((4.5 / 2)) # error
echo $((5 /  2))


exit 0