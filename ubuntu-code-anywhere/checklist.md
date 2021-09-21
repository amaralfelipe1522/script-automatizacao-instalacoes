# CHECK LIST

## wget
```
apt-get install wget -y
```
## curl
```
apt-get install curl
```
## Snap
```
apt-get install snapd -y
```
## Git
```
apt-get install git-all -y
```
## Terminator
```
apt-get install terminator -y
```
```
update-alternatives --config x-terminal-emulator
```
## Zsh
```
apt-get install zsh -y
```
> You can check your default shell interpreter by running echo $SHELL If it is not /usr/bin/zsh you can change it by running chsh -s $(which zsh)

## OhMyZsh
```
sh -c “$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
## Ranger
```
apt-get install ranger caca-utils highlight atool w3m poppler-utils mediainfo -y
```
## Docker (Ubuntu)
```
apt-get updade -y
```
```
apt install apt-transport-https ca-certificates curl software-properties-common -y
```
```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
```
```
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
```
```
apt-get updade -y
```
```
apt install docker-ce -y
```

## Docker (Debian)
```
apt install -y docker.io -y
```
```
systemctl enable docker --now
```
```
usermod -aG docker $USER
```

## Keybase
```
curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
```
```
apt install ./keybase_amd64.deb -y
```
## Brave
```
apt install apt-transport-https curl -y
```
```
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
```
```
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|tee /etc/apt/sources.list.d/brave-browser-release.list
```
```
apt update -y
```
```
apt install brave-browser -y
```
### or
```
snap install brave -y
```
## Remmina
```
apt update -y
```
```
apt-get install software-properties-common -y
```
```
apt-add-repository ppa:remmina-ppa-team/remmina-next && apt update && apt install remmina remmina-plugin-rdp remmina-plugin-secret
```
## Anydesk
```
wget https://download.anydesk.com/linux/anydesk_6.1.0-1_amd64.deb -O anydesk.deb
```
```
apt install ./anydesk.deb -y
```
## Libreoffice
```
sudo apt install libreoffice -y
```
## Obs Studio
```
apt install ffmpeg -y
```
```
add-apt-repository ppa:obsproject/obs-studio
```
```
apt install obs-studio -y
```
## VLC
```
apt install vlc -y
```
