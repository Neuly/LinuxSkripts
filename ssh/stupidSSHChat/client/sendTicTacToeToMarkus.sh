#!/bin/bash
scp user@192.168.140.113:/home/user/scripts/communication communication
scp user@192.168.140.113:/home/user/scripts/positions positions
RED='\033[0;31m'
NC='\033[0m' # No Color
#printf "${RED}Philipp send you:${NC}" >> communication
echo "" >> communication
sh tictactoe.sh $1 $2 >> communication
sh tailFile.sh
scp communication user@192.168.140.113:/home/user/scripts/communication 
scp positions user@192.168.140.113:/home/user/scripts/positions






