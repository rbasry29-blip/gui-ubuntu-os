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

printf "${c}[${g}*${c}]${g} Installing fwupd${r}\n"
proot-distro login ubuntu -- apt install fwupd -y




printf "${c}[${g}*${c}]${g} Installing fwupdate${r}\n"
proot-distro login ubuntu -- apt install fwupdate -y

printf "${c}[${g}*${c}]${g} Installing fwupdate-signed${r}\n"
proot-distro login ubuntu -- apt install fwupdate-signed -y

printf "${c}[${g}*${c}]${g} Installing udisks2${r}\n"
proot-distro login ubuntu -- apt install udisks2 -y

printf "${c}[${g}*${c}]${g} Installing upower${r}\n"
proot-distro login ubuntu -- apt install upower -y

printf "${c}[${g}*${c}]${g} Installing cups${r}\n"
proot-distro login ubuntu -- apt install cups -y

printf "${c}[${g}*${c}]${g} Installing cups-browsed${r}\n"
proot-distro login ubuntu -- apt install cups-browsed -y

printf "${c}[${g}*${c}]${g} Installing cups-client${r}\n"
proot-distro login ubuntu -- apt install cups-client -y

printf "${c}[${g}*${c}]${g} Installing cups-common${r}\n"
proot-distro login ubuntu -- apt install cups-common -y

printf "${c}[${g}*${c}]${g} Installing cups-daemon${r}\n"
proot-distro login ubuntu -- apt install cups-daemon -y

printf "${c}[${g}*${c}]${g} Installing cups-server-common${r}\n"
proot-distro login ubuntu -- apt install cups-server-common -y

printf "${c}[${g}*${c}]${g} Installing printer-driver-all${r}\n"
proot-distro login ubuntu -- apt install printer-driver-all -y

printf "${c}[${g}*${c}]${g} Installing printer-driver-gutenprint${r}\n"
proot-distro login ubuntu -- apt install printer-driver-gutenprint -y

printf "${c}[${g}*${c}]${g} Installing printer-driver-hpcups${r}\n"
proot-distro login ubuntu -- apt install printer-driver-hpcups -y

printf "${c}[${g}*${c}]${g} Installing printer-driver-brlaser${r}\n"
proot-distro login ubuntu -- apt install printer-driver-brlaser -y

printf "${c}[${g}*${c}]${g} Installing printer-driver-foo2zjs${r}\n"
proot-distro login ubuntu -- apt install printer-driver-foo2zjs -y

printf "${c}[${g}*${c}]${g} Installing printer-driver-ptouch${r}\n"
proot-distro login ubuntu -- apt install printer-driver-ptouch -y

printf "${c}[${g}*${c}]${g} Installing printer-driver-splix${r}\n"
proot-distro login ubuntu -- apt install printer-driver-splix -y

printf "${c}[${g}*${c}]${g} Installing colord${r}\n"
proot-distro login ubuntu -- apt install colord -y

printf "${c}[${g}*${c}]${g} Installing geoclue-2.0${r}\n"
proot-distro login ubuntu -- apt install geoclue-2.0 -y

printf "${c}[${g}*${c}]${g} Installing avahi-daemon${r}\n"
proot-distro login ubuntu -- apt install avahi-daemon -y

printf "${c}[${g}*${c}]${g} Installing avahi-utils${r}\n"
proot-distro login ubuntu -- apt install avahi-utils -y

printf "${c}[${g}*${c}]${g} Installing modemmanager${r}\n"
proot-distro login ubuntu -- apt install modemmanager -y

printf "${c}[${g}*${c}]${g} Installing network-manager${r}\n"
proot-distro login ubuntu -- apt install network-manager -y

printf "${c}[${g}*${c}]${g} Installing bluez${r}\n"
proot-distro login ubuntu -- apt install bluez -y

printf "${c}[${g}*${c}]${g} Installing bluetooth${r}\n"
proot-distro login ubuntu -- apt install bluetooth -y

printf "${c}[${g}*${c}]${g} Installing bolt${r}\n"
proot-distro login ubuntu -- apt install bolt -y



printf "${c}[${g}*${c}]${g} Installing isc-dhcp-client${r}\n"
proot-distro login ubuntu -- apt install isc-dhcp-client -y

printf "${c}[${g}*${c}]${g} Installing isc-dhcp-common${r}\n"
proot-distro login ubuntu -- apt install isc-dhcp-common -y

printf "${c}[${g}*${c}]${g} Installing ppp${r}\n"
proot-distro login ubuntu -- apt install ppp -y



printf "${c}[${g}*${c}]${g} Installing ubuntu-drivers-common${r}\n"
proot-distro login ubuntu -- apt install ubuntu-drivers-common -y

printf "${c}[${g}*${c}]${g} Installing ubuntu-release-upgrader-core${r}\n"
proot-distro login ubuntu -- apt install ubuntu-release-upgrader-core -y

printf "${c}[${g}*${c}]${g} Installing ubuntu-standard${r}\n"
proot-distro login ubuntu -- apt install ubuntu-standard -y

printf "${c}[${g}*${c}]${g} Installing whoopsie${r}\n"
proot-distro login ubuntu -- apt install whoopsie -y

printf "${c}[${g}*${c}]${g} Installing apport${r}\n"
proot-distro login ubuntu -- apt install apport -y

printf "${c}[${g}*${c}]${g} Installing apport-symptoms${r}\n"
proot-distro login ubuntu -- apt install apport-symptoms -y

printf "${c}[${g}*${c}]${g} Installing friendly-recovery${r}\n"
proot-distro login ubuntu -- apt install friendly-recovery -y

printf "${c}[${g}*${c}]${g} Installing plymouth${r}\n"
proot-distro login ubuntu -- apt install plymouth -y

printf "${c}[${g}*${c}]${g} Installing plymouth-theme-ubuntu-text${r}\n"
proot-distro login ubuntu -- apt install plymouth-theme-ubuntu-text -y

printf "${c}[${g}*${c}]${g} Installing multipath-tools${r}\n"
proot-distro login ubuntu -- apt install multipath-tools -y

printf "${c}[${g}*${c}]${g} Installing irqbalance${r}\n"
proot-distro login ubuntu -- apt install irqbalance -y

printf "${c}[${g}*${c}]${g} Installing xserver-xorg-video-all${r}\n"
proot-distro login ubuntu -- apt install xserver-xorg-video-all -y

printf "${c}[${g}*${c}]${g} Installing dbus-x11${r}\n"
proot-distro login ubuntu -- apt install dbus-x11 -y

printf "${c}[${g}*${c}]${g} Installing xubuntu-desktop${r}\n"
proot-distro login ubuntu -- apt install xubuntu-desktop -y


  
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

