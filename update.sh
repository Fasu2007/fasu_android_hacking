#!/data/data/com.termux/files/usr/bin/bash

clear

echo "=================================="
echo "   FASU TOOLKIT AUTO UPDATER"
echo "=================================="
echo ""

echo "[+] Checking for updates..."

if [ -d ".git" ]; then
    echo "[+] Git repository detected"
else
    echo "[!] Not a git repo. Cloning required."
    exit
fi

echo "[+] Pulling latest updates from GitHub..."
git pull origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "[✓] Update successful!"
else
    echo ""
    echo "[✗] Update failed!"
fi

echo ""
echo "Done."
