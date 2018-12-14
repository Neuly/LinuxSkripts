#!/bin/sh
# set Variables

if [ -z $1 ]
	then
		echo "First Argument needs to be uname of destination server"
		exit
fi

if [ -z $2  ]
        then
                echo "Second Argument needs to be ip of destination server"
		exit
fi

if [ -z $3 ]
	then
		echo "Third Argument needs to be the destination path on server to communication file"
		exit
fi

export CHATSERVER_Uname=$1
echo "Set Uname ChatServer auf $CHATSERVER_Uname"
export CHATSERVER_ip=$2
echo "Set IP Chatserver auf $CHATSERVER_ip"
export CHATSERVER_remotePath=$3
echo "Set Remote Path to Communication File to $CHATSERVER_remotePath"
export CHATSERVER_remotePathToPositions=$4
echo "Set Remote Path to Positions File to CHATSERVER_remotePathToPositions"

