#!/data/data/com.termux/files/usr/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
NC='\033[0m'

banner() {
clear
figlet "FASU" | lolcat
printf "${CYAN}===========================================${NC}\n"
printf "${GREEN}      ADVANCED HACKER DASHBOARD${NC}\n"
printf "${CYAN}===========================================${NC}\n"
echo ""
}

pause(){
read -p "Press Enter To Continue..."
}

while true

do
banner

echo -e "${YELLOW}[1]${WHITE} Device Information"
echo -e "${YELLOW}[2]${WHITE} Connected Devices"
echo -e "${YELLOW}[3]${WHITE} Connect ADB Device"
echo -e "${YELLOW}[4]${WHITE} Open WhatsApp"
echo -e "${YELLOW}[5]${WHITE} Take Screenshot"
echo -e "${YELLOW}[6]${WHITE} Network Scan"
echo -e "${YELLOW}[7]${WHITE} System Information"
echo -e "${YELLOW}[8]${WHITE} Storage Usage"
echo -e "${YELLOW}[9]${WHITE} Live Battery Info"
echo -e "${YELLOW}[10]${WHITE} Internet Test"
echo -e "${YELLOW}[11]${WHITE} Phone Vibration"
echo -e "${YELLOW}[12]${WHITE} Speak Text"
echo -e "${YELLOW}[13]${WHITE} Python Console"
echo -e "${YELLOW}[14]${WHITE} Kali NetHunter"
echo -e "${YELLOW}[15]${WHITE} Update Packages"
echo -e "${YELLOW}[16]${WHITE} Wi-Fi Devices Scan"
echo -e "${YELLOW}[17]${WHITE} Create Notes"
echo -e "${YELLOW}[18]${WHITE} Custom ADB Command"
echo -e "${RED}[0]${WHITE} Exit"

echo ""
read -p "Choose Option: " option

if [ "$option" = "1" ]; then
    clear
    neofetch
    pause

elif [ "$option" = "2" ]; then
    clear
    adb devices
    pause

elif [ "$option" = "3" ]; then
    clear
    read -p "Enter IP:PORT : " target
    adb connect $target
    pause

elif [ "$option" = "4" ]; then
    clear
    adb shell monkey -p com.whatsapp -c android.intent.category.LAUNCHER 1
    pause

elif [ "$option" = "5" ]; then
    clear
    adb shell screencap /sdcard/test.png
    adb pull /sdcard/test.png
    echo "Screenshot saved in current folder"
    pause

elif [ "$option" = "6" ]; then
    clear
    read -p "Enter Network Range: " net
    nmap $net
    pause

elif [ "$option" = "7" ]; then
    clear
    uname -a
    uptime
    pause

elif [ "$option" = "8" ]; then
    clear
    df -h
    pause

elif [ "$option" = "9" ]; then
    clear
    termux-battery-status
    pause

elif [ "$option" = "10" ]; then
    clear
    ping -c 4 google.com
    pause

elif [ "$option" = "11" ]; then
    clear
    termux-vibrate -d 1000
    echo "Phone Vibrated"
    pause

elif [ "$option" = "12" ]; then
    clear
    read -p "Enter Text To Speak: " text
    termux-tts-speak "$text"
    pause

elif [ "$option" = "13" ]; then
    clear
    python
    pause

elif [ "$option" = "14" ]; then
    clear
    nh
    pause

elif [ "$option" = "15" ]; then
    clear
    pkg update && pkg upgrade -y
    pause

elif [ "$option" = "16" ]; then
    clear
    ip addr show wlan0
    read -p "Enter Network Range: " range
    nmap -sn $range
    pause

elif [ "$option" = "17" ]; then
    clear
    nano notes.txt
    pause

elif [ "$option" = "18" ]; then
    clear
    read -p "Enter ADB Shell Command: " cmd
    adb shell $cmd
    pause

elif [ "$option" = "0" ]; then
    clear
    cowsay "Goodbye FASU" | lolcat
    exit

else
    echo "Invalid Option"
    sleep 1
fi

done
