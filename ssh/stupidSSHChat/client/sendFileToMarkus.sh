#!/bin/bash

if [ -z $1 ]
	then
		echo "First Argument needs path to file which needs to be sent"
		exit
fi

RED='\033[0;31m'
NC='\033[0m' # No Color

scp ${CHATSERVER_Uname}@${CHATSERVER_ip}:${CHATSERVER_remotePath} communication

printf "${RED}Client send you:${NC}" >> communication

echo "" >> communication

cat $1 >> communication
sh tailFile.sh

scp communication ${CHATSERVER_Uname}@${CHATSERVER_ip}:${CHATSERVER_remotePath} 






