#!/data/data/com.termux/files/usr/bin/bash

clear

echo "=================================="
echo "   FASU TOOLKIT AUTO UPDATER"
echo "=================================="
echo ""

echo "[+] Checking repository..."

if [ ! -d ".git" ]; then
    echo "[!] Not a git repository"
    exit
fi

echo "[+] Updating from GitHub (no login required)..."

# FORCE PUBLIC FETCH ONLY
git -c credential.helper= pull origin main --no-rebase

if [ $? -eq 0 ]; then
    echo ""
    echo "[✓] Update successful!"
else
    echo ""
    echo "[✗] Update failed!"
    echo "Check internet or repo connection"
fi

echo ""
echo "Done." 
