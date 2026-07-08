if [ -L ~/storage/shared ]; then
	echo "termux-setup-storage already ready"
else
	termux-setup-storage
fi
pkg install proot-distro -y
proot-distro install ubuntu
proot-distro login ubuntu << 'EOF'
apt update && apt upgrade -y
curl -fsSL https://opencode.ai/install | bash
mkdir /storage/emulated/0/Opencode
echo "cd /storage/emulated/0/Opencode" >> ~/.bashrc
echo "opencode" >> ~/.bashrc
EOF
echo 'alias opencode="proot-distro login ubuntu"' >> ~/.bashrc
source ~/.bashrc
echo "Close and restart termux, then type opencode to access Opencode"
