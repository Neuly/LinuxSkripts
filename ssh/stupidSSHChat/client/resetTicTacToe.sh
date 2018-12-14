#!/bin/bash

source $(dirname $0)/checkEnvVariablesAreSet.sh
checkIfVariablesAreSet

# remove positions and overwrite the file with the backup file from the server
rm positions
scp positions_backup ${CHATSERVER_Uname}@${CHATSERVER_ip}:$CHATSERVER_remotePathToPositions
echo "reset done"
