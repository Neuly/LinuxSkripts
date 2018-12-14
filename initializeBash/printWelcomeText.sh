# welcome text
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

function printRedAsFiglet {
	FIGLETOUT="$(figlet -c $1)"
	printf "${RED}$FIGLETOUT${NC}"
}

function printGreenAsFiglet {
	FIGLETOUT="$(figlet -c $1)"
        printf "${GREEN}$FIGLETOUT${NC}"
}

USERNAME="$(whoami)";

clear
printGreenAsFiglet "Willkommen";
printRedAsFiglet $USERNAME;
IPV4="$(ip addr show enp0s25 | grep -i "inet " | cut -d" " -f6)"
echo ""
echo "Current Working Directory:  $(pwd)"
echo "Current Cent OS Version:    $(cat /etc/centos-release)"
echo "Current IP-4 Adress:        $IPV4"
