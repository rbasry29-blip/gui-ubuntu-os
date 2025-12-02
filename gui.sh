#!/bin/bash
g='\e[1;92m'
b='\e[34m'
r='\e[0m'
y='\e[1;33m'
c='\e[1;96m'


clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"
printf "${b}[${g}*${b}]${c} Updating and Installing packages.  This may take up to 2 hours,  please wait${r}\n"

# Login to Ubuntu and run commands sequentially
proot-distro login ubuntu -- apt update -y 
proot-distro login ubuntu -- dpkg --configure -a 
proot-distro login ubuntu -- apt update -y 
proot-distro login ubuntu -- apt install xubuntu-desktop dbus-x11 -y printf "${b}[${g}*${b}]${g} Adding user ubuntu ${r}\n" 
proot-distro login ubuntu -- adduser ubuntu


# Create gui launcher inside Ubuntu
proot-distro login ubuntu -- bash -c "cat > /usr/bin/gui << 'EOF'
#!/bin/bash
export DISPLAY=:0
dbus-launch
xfce4-session &
EOF
chmod +x /usr/bin/gui"

clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"
printf "${b}[${g}*${b}]${g} Finishing...
Everything is good!
You can launch Ubuntu via termux-x11 using commands:
1. ${y}server${g}
Then open another session and run -
2. ${y}ubuntu${g}
3. ${y}gui${g}
Enjoy! ${r}\n"

