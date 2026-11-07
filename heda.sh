
#!/data/data/com.termux/files/usr/bin/bash

# ==========================================
#          HEDA TOOLKIT v1.0
#          Android / Termux
# ==========================================

clear

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
RESET='\033[0m'

banner() {
    echo -e "${CYAN}"
    echo "=========================================="
    echo "             HEDA TOOLKIT"
    echo "=========================================="
    echo -e "${RESET}"
}

banner

echo -ne "${YELLOW}USER / ADMINISTRATOR: ${RESET}"
read admin

if [[ "$admin" != "heda" ]]; then
    echo -e "${RED}"
    echo "ACCESS DENIED!"
    echo "INVALID USER."
    echo -e "${RESET}"
    exit 1
fi

clear

echo -e "${GREEN}ACCESS GRANTED${RESET}"
echo -e "${CYAN}WELCOME, ADMINISTRATOR HEDA${RESET}"

sleep 2

# Simulation function
run_stage() {
    local title="$1"

    echo
    echo -e "${YELLOW}[+] ${title}${RESET}"

    for i in {1..10}; do
        printf "\r${CYAN}[%02d/10] Processing simulation...${RESET}" "$i"
        sleep 1.2
    done

    echo
    echo -e "${GREEN}[OK] ${title} COMPLETE${RESET}"
}

# Synchronization sequence
run_stage "RUNNING MARKET DATABASE"
run_stage "SYNCHRONIZING"
run_stage "RUNNING RECON"
run_stage "IT'S 15501"
run_stage "GIT GIT NORE"

sleep 1
clear

# Final welcome screen
echo -e "${GREEN}"

cat << 'EOF'

██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███╗   ███╗
██║    ██║██╔════╝██║     ██╔════╝██╔═══██╗████╗ ████║
██║ █╗ ██║█████╗  ██║     ██║     ██║   ██║██╔████╔██║
██║███╗██║██╔══╝  ██║     ██║     ██║   ██║██║╚██╔╝██║
╚███╔███╔╝███████╗███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║
 ╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝

       ██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███╗   ███╗
       ██║    ██║██╔════╝██║     ██╔════╝██╔═══██╗████╗ ████║
       ██║ █╗ ██║█████╗  ██║     ██║     ██║   ██║██╔████╔██║
       ██║███╗██║██╔══╝  ██║     ██║     ██║   ██║██║╚██╔╝██║
       ╚███╔███╔╝███████╗███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║

                 WELCOME BACK HEDA

=============================================
          ALL RECON COMPLETED
=============================================

EOF

echo -e "${RESET}"
