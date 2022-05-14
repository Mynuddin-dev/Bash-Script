#!/usr/bin/bash

# timer machine

total_seconds=""

while getopts "m:s:" opt;do
    case "$opt" in
        m) total_seconds=$(( $total_seconds + $OPTARG * 60 )) ;;
        s) total_seconds=$(( $total_seconds + $OPTARG )) ;;
        \?) echo "Invalid option provide";;

    esac

done

while [ $total_seconds -gt 0 ];do
    echo $total_seconds
    ((total_seconds--))
    sleep 1s

done

echo "Time's Up bro"


# ./while_loop_project.sh -s 10
# ./while_loop_project.sh -m 1
# ./while_loop_project.sh -s 5 -m 1
# ./while_loop_project.sh -m 1 -s 5



