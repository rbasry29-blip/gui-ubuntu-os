c='\e[1;96m'
r='\e[0m'
clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"
printf "${c}Removing UBUNTU ${r}\n"
proot-distro remove ubuntu
apt remove proot-distro x11-repo termux-x11-nightly -y