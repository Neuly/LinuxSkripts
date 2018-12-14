#!/bin/bash
ssh -T ${CHATSERVER_Uname}@${CHATSERVER_ip} "echo 'Philipp(SSH): $1' >> ${CHATSERVER_remotePath};"
scp ${CHATSERVER_Uname}@${CHATSERVER_ip}:${CHATSERVER_remotePath} .


