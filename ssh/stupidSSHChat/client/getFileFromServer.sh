#!/bin/bash
# periodically gets the communication file from the server and displays it

source $(dirname $0)/checkEnvVariablesAreSet.sh
checkIfVariablesAreSet 

# display text
while true; do	
	scp $CHATSERVER_Uname@$CHATSERVER_ip:${CHATSERVER_remotePath} .
	clear
	cat -n communication
	sleep 5
done



