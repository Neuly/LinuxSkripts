#!/bin/sh
# Check if variables are set
function checkIfVariablesAreSet {
	if [ -z $CHATSERVER_Uname ]
	then
		echo "CHATSERVER_Uname not set"
		echo "run setVariables.sh"
		exit
	fi

	if [ -z $CHATSERVER_ip  ]
        then
                echo "CHATSERVER_ip not set"
		echo "run setVariables.sh"
		exit
	fi
	
	if [ -z $CHATSERVER_remotePath ]
	then
		echo "CHATSERVER_remotePath not set"
		echo "run setVariables.sh"
		exit
	fi

	if [ -z $CHATSERVER_remotePathToPositions ]
        then
            	echo "CHATSERVER_remotePathToPositions not set"
                echo "run setVariables.sh"
                exit
        fi

}

checkIfVariablesAreSet
