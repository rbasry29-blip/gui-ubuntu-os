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
printf "${b}[${g}*${b}]${c} Updating ${r}\n"

# Login to Ubuntu and run commands sequentially
proot-distro login ubuntu -- apt update -y


clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"
printf "${b}[${g}*${b}]${c} Installing packages ${r}\n"

proot-distro login ubuntu -- dpkg --configure -a 
proot-distro login ubuntu -- apt update -y 

g='\e[1;92m'
c='\e[1;96m'
r='\e[0m'

printf "${c}[${g}${c}Installing fwupd${r}\n"
proot-distro login ubuntu -- apt install fwupd -y

printf "${c}[${g}${c}Installing fwupd-amd64-signed${r}\n"
proot-distro login ubuntu -- apt install fwupd-amd64-signed -y

printf "${c}[${g}${c}Installing fwupd-signed${r}\n"
proot-distro login ubuntu -- apt install fwupd-signed -y

printf "${c}[${g}${c}Installing fwupdate${r}\n"
proot-distro login ubuntu -- apt install fwupdate -y

printf "${c}[${g}${c}Installing fwupdate-signed${r}\n"
proot-distro login ubuntu -- apt install fwupdate-signed -y

printf "${c}[${g}${c}Installing udisks2${r}\n"
proot-distro login ubuntu -- apt install udisks2 -y

printf "${c}[${g}${c}Installing upower${r}\n"
proot-distro login ubuntu -- apt install upower -y

printf "${c}[${g}${c}Installing cups${r}\n"
proot-distro login ubuntu -- apt install cups -y

printf "${c}[${g}${c}Installing cups-browsed${r}\n"
proot-distro login ubuntu -- apt install cups-browsed -y

printf "${c}[${g}${c}Installing cups-client${r}\n"
proot-distro login ubuntu -- apt install cups-client -y

printf "${c}[${g}${c}Installing cups-common${r}\n"
proot-distro login ubuntu -- apt install cups-common -y

printf "${c}[${g}${c}Installing cups-daemon${r}\n"
proot-distro login ubuntu -- apt install cups-daemon -y

printf "${c}[${g}${c}Installing cups-server-common${r}\n"
proot-distro login ubuntu -- apt install cups-server-common -y

printf "${c}[${g}${c}Installing printer-driver-all${r}\n"
proot-distro login ubuntu -- apt install printer-driver-all -y

printf "${c}[${g}${c}Installing printer-driver-gutenprint${r}\n"
proot-distro login ubuntu -- apt install printer-driver-gutenprint -y

printf "${c}[${g}${c}Installing printer-driver-hpcups${r}\n"
proot-distro login ubuntu -- apt install printer-driver-hpcups -y

printf "${c}[${g}${c}Installing printer-driver-brlaser${r}\n"
proot-distro login ubuntu -- apt install printer-driver-brlaser -y

printf "${c}[${g}${c}Installing printer-driver-foo2zjs${r}\n"
proot-distro login ubuntu -- apt install printer-driver-foo2zjs -y

printf "${c}[${g}${c}Installing printer-driver-ptouch${r}\n"
proot-distro login ubuntu -- apt install printer-driver-ptouch -y

printf "${c}[${g}${c}Installing printer-driver-splix${r}\n"
proot-distro login ubuntu -- apt install printer-driver-splix -y

printf "${c}[${g}${c}Installing colord${r}\n"
proot-distro login ubuntu -- apt install colord -y

printf "${c}[${g}${c}Installing geoclue-2.0${r}\n"
proot-distro login ubuntu -- apt install geoclue-2.0 -y

printf "${c}[${g}${c}Installing avahi-daemon${r}\n"
proot-distro login ubuntu -- apt install avahi-daemon -y

printf "${c}[${g}${c}Installing avahi-utils${r}\n"
proot-distro login ubuntu -- apt install avahi-utils -y

printf "${c}[${g}${c}Installing modemmanager${r}\n"
proot-distro login ubuntu -- apt install modemmanager -y

printf "${c}[${g}${c}Installing network-manager${r}\n"
proot-distro login ubuntu -- apt install network-manager -y

printf "${c}[${g}${c}Installing bluez${r}\n"
proot-distro login ubuntu -- apt install bluez -y

printf "${c}[${g}${c}Installing bluetooth${r}\n"
proot-distro login ubuntu -- apt install bluetooth -y

printf "${c}[${g}${c}Installing bolt${r}\n"
proot-distro login ubuntu -- apt install bolt -y

printf "${c}[${g}${c}Installing wpa_supplicant${r}\n"
proot-distro login ubuntu -- apt install wpa_supplicant -y

printf "${c}[${g}${c}Installing isc-dhcp-client${r}\n"
proot-distro login ubuntu -- apt install isc-dhcp-client -y

printf "${c}[${g}${c}Installing isc-dhcp-common${r}\n"
proot-distro login ubuntu -- apt install isc-dhcp-common -y

printf "${c}[${g}${c}Installing ppp${r}\n"
proot-distro login ubuntu -- apt install ppp -y

printf "${c}[${g}${c}Installing pppd${r}\n"
proot-distro login ubuntu -- apt install pppd -y

printf "${c}[${g}${c}Installing ubuntu-drivers-common${r}\n"
proot-distro login ubuntu -- apt install ubuntu-drivers-common -y

printf "${c}[${g}${c}Installing ubuntu-release-upgrader-core${r}\n"
proot-distro login ubuntu -- apt install ubuntu-release-upgrader-core -y

printf "${c}[${g}${c}Installing ubuntu-standard${r}\n"
proot-distro login ubuntu -- apt install ubuntu-standard -y

printf "${c}[${g}${c}Installing whoopsie${r}\n"
proot-distro login ubuntu -- apt install whoopsie -y

printf "${c}[${g}${c}Installing apport${r}\n"
proot-distro login ubuntu -- apt install apport -y

printf "${c}[${g}${c}Installing apport-symptoms${r}\n"
proot-distro login ubuntu -- apt install apport-symptoms -y

printf "${c}[${g}${c}Installing friendly-recovery${r}\n"
proot-distro login ubuntu -- apt install friendly-recovery -y

printf "${c}[${g}${c}Installing plymouth${r}\n"
proot-distro login ubuntu -- apt install plymouth -y

printf "${c}[${g}${c}Installing plymouth-theme-ubuntu-text${r}\n"
proot-distro login ubuntu -- apt install plymouth-theme-ubuntu-text -y

printf "${c}[${g}${c}Installing multipath-tools${r}\n"
proot-distro login ubuntu -- apt install multipath-tools -y

printf "${c}[${g}${c}Installing irqbalance${r}\n"
proot-distro login ubuntu -- apt install irqbalance -y

printf "${c}[${g}${c}Installing xserver-xorg-video-all${r}\n"
proot-distro login ubuntu -- apt install xserver-xorg-video-all -y


printf "${c}[${g}${c}Installing dbus-x11${r}\n"
proot-distro login ubuntu -- apt install dbus-x11 -y -y

printf "${c}[${g}${c}Installing xubuntu-desktop${r}\n"
proot-distro login ubuntu -- apt install xubuntu-desktop  -y



clear
printf "\e[1;33m    _  _ ___  _  _ _  _ ___ _  _\n"
printf "\e[1;96m    |  | |__] |  | |\\ |  |  |  |\n"
printf "\e[1;92m    |__| |__] |__| | \\|  |  |__|\n"
printf "\e[1;92m     PROOT-DISTRO-UBUNTU\n\n\e[0m"
printf "${b}[${g}*${b}]${g} Adding user ubuntu ${r}\n" 
proot-distro login ubuntu -- adduser ubuntu

printf "${b}[${g}*${b}]${g} Creating launchers  ${r}\n"

proot-distro login ubuntu -- apt update -y


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
printf "${b}[${g}*${b}]${c} Finishing...
Everything is good!
You can launch Ubuntu via termux-x11 using commands:
1. ${y}server${c}
Then open another session and run -
2. ${y}ubuntu${c}
3. ${y}gui${c}
Enjoy! ${r}\n"

