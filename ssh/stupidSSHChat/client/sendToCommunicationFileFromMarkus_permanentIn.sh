#!/bin/bash
GREEN='\033[0;32m'
NC='\033[0m' # No Color

while true; do
	clear
	time=$(date +%T)
	echo "Bitte Nachricht für Übertragung eingeben:"
	read -e TEXT
	ssh -T ${CHATSERVER_Uname}@${CHATSERVER_ip} "echo -e '${GREEN}Philipp (SSH) ${NC} ${time}: $TEXT' >> ${CHATSERVER_remotePath};"
	echo "Transfer erfolgreich ..."
	sleep 1
done;


