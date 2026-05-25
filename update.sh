#!/data/data/com.termux/files/usr/bin/bash

REPO="Fasu2007/fasu_android_hacking"
LOCAL_VERSION=$(cat version.txt 2>/dev/null)
REMOTE_VERSION=$(curl -s https://raw.githubusercontent.com/$REPO/main/version.txt)

clear

echo "=================================="
echo "   FASU TOOLKIT AUTO UPDATER"
echo "=================================="
echo ""

echo "[+] Local version: $LOCAL_VERSION"
echo "[+] Remote version: $REMOTE_VERSION"
echo ""

if [ "$LOCAL_VERSION" = "$REMOTE_VERSION" ]; then
    echo "[✓] You already have the latest version"
    exit
fi

echo "[+] New update found!"
echo "[+] Downloading update..."

curl -L -o update.zip https://github.com/$REPO/archive/refs/heads/main.zip

unzip -o update.zip > /dev/null
cp -r $REPO-main/* .
rm -rf update.zip $REPO-main

echo "$REMOTE_VERSION" > version.txt

echo ""
echo "[✓] Update completed successfully!"
