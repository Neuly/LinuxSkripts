# welcome text
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

function printOut {
	printf "${Green}$1${NC}"
}
USERNAME="$(whoami)";

clear
printOut " Cleared ...";
echo ""
