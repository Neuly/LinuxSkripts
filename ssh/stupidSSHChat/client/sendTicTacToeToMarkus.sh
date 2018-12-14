#!/bin/bash
scp ${CHATSERVER_Uname}@${CHATSERVER_ip}:${CHATSERVER_remotePath} communication
scp ${CHATSERVER_Uname}@${CHATSERVER_ip}:${CHATSERVER_remotePathToPositions} positions

RED='\033[0;31m'
NC='\033[0m' # No Color


echo "" >> communication
sh tictactoe.sh $1 $2 >> communication
sh tailFile.sh

scp communication ${CHATSERVER_Uname}@${CHATSERVER_ip}:${CHATSERVER_remotePath}
scp positions ${CHATSERVER_Uname}@${CHATSERVER_ip}:${CHATSERVER_remotePathToPositions}






