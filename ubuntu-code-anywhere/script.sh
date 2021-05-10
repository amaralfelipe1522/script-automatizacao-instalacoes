apt-get update -y && apt-get upgrade -y && \
apt-get install wget -y && \
apt-get install snapd -y && \
apt-get install git-all -y && \
apt-get install terminator -y && \
update-alternatives --config x-terminal-emulator
apt-get install zsh -y && \
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \
apt-get install ranger caca-utils highlight atool w3m poppler-utils mediainfo && \
apt-get updade -y && \
apt install apt-transport-https ca-certificates curl software-properties-common -y && \
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" && \
apt-get updade -y && \
apt install docker-ce -y && \
curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb && \
apt install ./keybase_amd64.deb -y && \
apt install apt-transport-https curl -y && \
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && \
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|tee /etc/apt/sources.list.d/brave-browser-release.list && \
apt update && \
apt install brave-browser -y && \
snap install brave -y && \
apt update -y && \
apt-get install software-properties-common && \
apt-add-repository ppa:remmina-ppa-team/remmina-next && apt update && apt install remmina remmina-plugin-rdp remmina-plugin-secret && \
wget https://download.anydesk.com/linux/anydesk_6.1.0-1_amd64.deb -O anydesk.deb && \
apt install ./anydesk.deb -y && \
snap install libreoffice -y && \
apt install ffmpeg -y && \
add-apt-repository ppa:obsproject/obs-studio && \
apt install obs-studio -y