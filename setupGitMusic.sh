cd ..
cd "storage/music"
git clone https://github.com/chirash76-cmd/Audio.git
git config --global --add safe.directory /storage/emulated/0/Music/Audio
echo 'alias musicd="cd storage/music/Audio && git pull origin main && cd ~"' >> ~/.bashrc
source ~/.bashrc
