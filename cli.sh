#!/bin/bash

# ================= Colors =================
g='\e[1;92m'   # Green
b='\e[34m'     # Blue
r='\e[0m'      # Reset
y='\e[1;33m'   # Yellow
c='\e[1;96m'   # Light cyan
# =========================================

# ================= Banner =================
banner() {
    clear
    printf '\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n'
    printf '\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n'
    printf '\e[1;92m    |__| |__] |__| | \\|  |  |__|\n'
    printf '\e[1;92m        GUI-UBUNTU-OS\n\n\e[0m'
}
# =========================================

# ================= Spinner =================
spinner() {
    local msg="$1"
    shift
    local cmd="$*"
    local frames=( "∆___" "_∆__" "__∆_" "___∆" )
    local i=0

    (
        while :; do
            printf "\r${c}${msg} [${y}${frames[i]}${c}]"
            i=$(( (i + 1) % 4 ))
            sleep 0.5
        done
    ) &
    local spin_pid=$!

    bash -c "$cmd" >/dev/null 2>&1
    local cmd_status=$?

    kill "$spin_pid" >/dev/null 2>&1
    wait "$spin_pid" 2>/dev/null

    if [ $cmd_status -eq 0 ]; then
        printf "\r${c}${msg} [${y}∆___${c}] ✅ Done\n"
    else
        printf "\r${c}${msg} [${y}∆___${c}] ❌ Failed\n"
    fi
}
# ==========================================

# ================= Internet Check ==========
check_internet() {
    TARGET_URL="https://github.com/rbasry29-blip/gui-ubuntu-os"

    if command -v curl >/dev/null 2>&1; then
        curl -Is --connect-timeout 5 "$TARGET_URL" >/dev/null 2>&1
    elif command -v wget >/dev/null 2>&1; then
        wget -q --spider --timeout=5 "$TARGET_URL"
    else
        echo "Error: curl or wget is required."
        exit
    fi

    if [ $? -ne 0 ]; then
        echo "Sorry, internet connection is needed."
        exit
    fi
}
# ==========================================

# ================= Typewriter Text =========
show_intro() {
    LINES=(
        "Welcome"
        "Wish your work will easier"
        "Let's get started!"
        "Enjoy gui-ubuntu-os"
    )

    for t in "${LINES[@]}"; do
        for ((i=0;i<${#t};i++)); do
            printf "${t:i:1}"
            sleep 0.08
        done
        echo
        sleep 2
    done
}
# ==========================================

# ================= Server Launcher =========
create_server_launcher() {
cat > "$PREFIX/bin/server" << 'EOF'
#!/bin/bash
echo Starting server... started!
termux-x11 :0
EOF
chmod +x "$PREFIX/bin/server"
}
# ==========================================

# ================= Ubuntu Launcher =========
create_ubuntu_launcher() {
cat > "$PREFIX/bin/ubuntu" << EOF
#!/bin/bash
proot-distro login ubuntu --shared-tmp -- su - $USERNAME
EOF
chmod +x "$PREFIX/bin/ubuntu"
}
# ==========================================

# ================= Main Flow ===============
banner
printf "$c"

check_internet
show_intro
printf "$r"

spinner "${b}[${g}*${b}]${c} Cleaning termux environment${g}....." \
"dpkg --configure -a && apt --fix-broken install && sleep 5"

banner
yes | termux-setup-storage

spinner "${b}[${g}*${b}]${c} Installing packages${g}....." \
"yes | apt update &&
 yes | apt install proot-distro &&
 yes | apt install x11-repo &&
 yes | apt install termux-x11-nightly"

banner
printf "${b}[${g}*${b}]${g} Installing distro${g}.....${r}\n"
proot-distro install ubuntu

banner
printf "${b}[${g}*${b}]${g} Adding user to Ubuntu ${g}.....${r}\n"

set -e
printf "${b}[${g}*${b}]${g}"
printf "$c"
read -rp " Enter username: " USERNAME
printf "${b}[${g}*${b}]${g}"
printf "$c"
read -rsp " Enter password: " PASSWORD
echo

proot-distro login ubuntu -- bash -c "
set -e
useradd -m -s /bin/bash \"$USERNAME\"
echo \"$USERNAME:$PASSWORD\" | chpasswd
usermod -aG sudo \"$USERNAME\"
"

banner
printf "${b}[${g}*${b}]${g} Ubuntu installed! ${r}\n"
printf "${b}[${g}*${b}]${g} Run ${y}ubuntu${g} to get Ubuntu cli ${r}\n"
printf "${b}[${g}*${b}]${g} If you want GUI , then run ${y}./gui.sh${r}\n"

create_server_launcher
create_ubuntu_launcher
# ==========================================