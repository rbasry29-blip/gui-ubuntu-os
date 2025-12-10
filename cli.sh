#!/bin/bash
g='\e[92m'
b='\e[34m'
r='\e[0m'
y='\e[1;33m'
c='\e[1;96m'
software(){
dpkg --configure -a 
apt --fix-broken install
clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"
printf "${b}[${g}*${b}]${c} Updating and installing packages ${r}\n"
yes | termux-setup-storage
apt update -y && apt install proot-distro -y && apt install x11-repo  -y && apt install termux-x11-nightly -y
apt install proot-distro -y
clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"
printf "${b}[${g}*${b}]${c} Installing distro ${r}\n"
proot-distro install ubuntu

clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"

printf "${b}[${g}*${b}]${g} Adding user ubuntu ${r}\n" 
proot-distro login ubuntu -- adduser ubuntu

printf "${b}[${g}*${b}]${g} Ubuntu installed! ${r}\n"
printf "${b}[${g}*${b}]${g} Run ${y} ubuntu ${g} to get Ubuntu cli ${r}\n"
printf "${b}[${g}*${b}]${g}If you want GUI , Then run ${r}\n"

printf "${b}[${g}*${b}]${y} ./gui.sh ${r}\n"


cat > $PREFIX/bin/server << 'EOF'
#!/bin/bash
echo "Starting server... started!"
termux-x11 :0
EOF

chmod +x $PREFIX/bin/server
cat > $PREFIX/bin/ubuntu << 'EOF'
#!/bin/bash
proot-distro login ubuntu --shared-tmp -- su - ubuntu
EOF

chmod +x $PREFIX/bin/ubuntu
}
software