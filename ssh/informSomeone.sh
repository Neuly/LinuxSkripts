#!/bin/bash
# prints a notify message on the destination 
# Usage:
# - Argument 1: user
# - Argument 2: ip adress

if [ "$1" -eq  "0" ]
   	then
     		echo "Argument 1 needs to be the user"
fi

if [ "$2" -eq  "0" ]
        then
                echo "Argument 2 needs to be the destination ip adress"
fi

ssh -T ${1}@${2} "export DISPLAY=:0;notify-send 'New message' 'check communication';"

echo "Message sent..."
