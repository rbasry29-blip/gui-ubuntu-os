#!/bin/bash
g='\e[92m'
b='\e[34m'
r='\e[0m'
software(){
clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"
printf "${b}[${g}*${b}]${g} Updating and installing packages ${r}\n"
apt update -y && apt install proot-distro -y && apt install x11-repo  -y && apt install termux-x11-nightly -y
clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"
printf "${b}[${g}*${b}]${g} Installing distro ${r}\n"
proot-distro install ubuntu 

printf "${b}[${g}*${b}]${g} Ubuntu installed! Now run another command './GUI' ${r}\n"
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