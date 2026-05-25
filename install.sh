#!/data/data/com.termux/files/usr/bin/bash

echo "================================="
echo "  INSTALLING FASU TOOLKIT PRO"
echo "================================="

pkg update -y && pkg upgrade -y

pkg install -y git python nmap figlet toilet cowsay ruby android-tools termux-api

gem install lolcat

chmod +x dashboard.sh

echo ""
echo "INSTALLATION COMPLETE!"
echo "Run with: bash dashboard.sh"
