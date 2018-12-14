#!/bin/bash
GREEN='\033[0;32m'
NC='\033[0m' # No Color

while true; do
	clear
	time=$(date +%T)
	echo "Bitte Nachricht für Übertragung eingeben:"
	read -e TEXT
	ssh -T user@192.168.140.113 "echo -e '${GREEN}Philipp (SSH) ${NC} ${time}: $TEXT' >> /home/user/scripts/communication;"
	echo "Transfer erfolgreich ..."
	sleep 1
#	scp user@192.168.140.113:/home/user/scripts/communication .
done;


