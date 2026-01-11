#!/bin/bash
g='\e[1;92m'   # Green
b='\e[34m'     # Blue
r='\e[0m'      # Reset
y='\e[1;33m'   # Yellow
c='\e[1;96m'   # Light cyan

spinner() {
    local msg="$1"
    shift
    local cmd="$*"
    local frames=( "∆___" "_∆__" "__∆_" "___∆" )
    local i=0

    # Start spinner in background
    (
        while :; do
            printf "\r${c}${msg} [${y}${frames[i]}${c}]"
            i=$(( (i + 1) % 4 ))
            sleep 0.5
        done
    ) &
    local spin_pid=$!

    # Run all commands in foreground, hide output
    bash -c "$cmd" >/dev/null 2>&1
    local cmd_status=$?

    # Stop spinner
    kill "$spin_pid" >/dev/null 2>&1
    wait "$spin_pid" 2>/dev/null

    # Print final line
    if [ $cmd_status -eq 0 ]; then
        printf "\r${c}${msg} [${y}∆___${c}] ✅ Done\n"
    else
        printf "\r${c}${msg} [${y}∆___${c}] ❌ Failed\n"
    fi
}
clear
printf '\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n'
printf '\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n'
printf '\e[1;92m    |__| |__] |__| | \\|  |  |__|\n'
printf '\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m'
printf "$c"
# ================= Internet Check =================
check_internet() {
    TARGET_URL="https://github.com/rbasry29-blip/gui-ubuntu-os"

    if command -v curl >/dev/null 2>&1; then
        curl -Is --connect-timeout 5 "$TARGET_URL" >/dev/null 2>&1
    elif command -v wget >/dev/null 2>&1; then
        wget -q --spider --timeout=5 "$TARGET_URL"
    else
        echo "Error: curl or wget is required to check internet connection."
        exit 1
    fi

    if [ $? -ne 0 ]; then
        echo "Sorry, internet connection is needed."
        exit 1
    fi
}

# Run internet check before anything else
check_internet
# ==================================================
LINES=(
  "Welcome"
  "Wish your work will easier"
  "Let's get started!"
  "Enjoy proot-distro-ubuntu"
)

for t in "${LINES[@]}"; do
  for ((i=0;i<${#t};i++)); do
    printf "${C}${B}${t:i:1}${N}"
    ((RANDOM%3==0)) && { printf "${G} ${N}\b"; sleep 0.05; }
    sleep 0.08
  done
  echo
  sleep 2
done
printf "$r"
spinner "${b}[${g}*${b}]${c} Cleaning termux environment${g}....." "dpkg --configure -a && apt --fix-broken install && sleep 5"
sleep 1
clear
printf '\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n'
printf '\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n'
printf '\e[1;92m    |__| |__] |__| | \\|  |  |__|\n'
printf '\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m'

yes | termux-setup-storage
spinner "${b}[${g}*${b}]${c} Installing packages${g}....." "yes | apt update  && yes | apt install proot-distro && yes | apt install x11-repo  && yes | apt install termux-x11-nightly && yes | apt install x11-repo "
sleep 1
clear
printf '\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n'
printf '\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n'
printf '\e[1;92m    |__| |__] |__| | \\|  |  |__|\n'
printf '\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m'

printf "${b}[${g}*${b}]${g} Installing distro${g}.....${r}\n"
proot-distro install ubuntu

clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf '\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m'
printf "${b}[${g}*${b}]${g} Adding user ubuntu ${g}.....${r}\n"
proot-distro login ubuntu -- adduser ubuntu

clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf '\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m'
printf "${b}[${g}*${b}]${g} Ubuntu installed! ${r}\n"
printf "${b}[${g}*${b}]${g} Run ${y} ubuntu ${g} to get Ubuntu cli ${r}\n"
printf "${b}[${g}*${b}]${g} If you want GUI , Then run ${r}\n"
printf "${b}[${g}*${b}]${y} ./gui.sh ${r}\n"

cat > $PREFIX/bin/server << 'EOF'
#!/bin/bash
echo Starting server... started!
termux-x11 :0
EOF

chmod +x $PREFIX/bin/server
cat > $PREFIX/bin/ubuntu << 'EOF'
#!/bin/bash
proot-distro login ubuntu --shared-tmp -- su - ubuntu
EOF

chmod +x $PREFIX/bin/ubuntu