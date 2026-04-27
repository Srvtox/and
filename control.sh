#!/bin/bash

export DISPLAY=:99

echo "control loop started"

touch commands.txt

tail -n 0 -f commands.txt | while read line
do

cmd=$(echo "$line" | awk '{print $1}')
arg=$(echo "$line" | cut -d' ' -f2-)

case "$cmd" in

mousemove)
xdotool mousemove $arg
;;

click)
xdotool click $arg
;;

type)
xdotool type "$arg"
;;

key)
xdotool key $arg
;;

sleep)
sleep $arg
;;

esac

done
