#!/bin/bash
# periodically gets the communication file from the server and displays it

source $(dirname $0)/checkEnvVariablesAreSet.sh
checkIfVariablesAreSet 


# check if a new path is given
pathToCommunicationFile=/home/user/scripts/communication
if [ -z $1 ]
then
	echo "path to remote communication file not given"
	pathToCommunicationFile=$1
fi

# display text
while true; do	
	scp $CHATSERVER_Uname@$CHATSERVER_ip:$pathToCommunicationFile .
	clear
	cat -n communication
	sleep 5
done



