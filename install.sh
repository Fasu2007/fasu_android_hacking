#!/data/data/com.termux/files/usr/bin/bash

clear
echo "=================================="
echo "  FASU ANDROID TOOLKIT INSTALLER"
echo "=================================="
echo ""

echo "[+] Updating packages..."
pkg update -y && pkg upgrade -y

echo "[+] Installing dependencies..."
pkg install -y git python nmap figlet toilet cowsay ruby android-tools termux-api curl wget

echo "[+] Installing lolcat..."
gem install lolcat

echo "[+] Setting permissions..."
chmod +x dashboard.sh

echo ""
echo "[✓] INSTALLATION COMPLETE"
echo "[✓] Run tool with:"
echo "    bash dashboard.sh"
echo ""
