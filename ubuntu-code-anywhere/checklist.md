# CHECK LIST

## wget
- sudo apt-get install wget
## Snap
- sudo apt-get install snapd -y
## Git
- sudo apt-get install git-all -y
## Terminator
- sudo apt-get install terminator -y
- sudo update-alternatives --config x-terminal-emulator
## Zsh
- sudo apt-get install zsh -y
> You can check your default shell interpreter by running echo $SHELL If it is not /usr/bin/zsh you can change it by running chsh -s $(which zsh)
## OhMyZsh
- sh -c “$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
## Ranger
- sudo apt-get install ranger caca-utils highlight atool w3m poppler-utils mediainfo
## Docker
- sudo apt-get updade -y
- sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
- curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
- sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
- sudo apt-get updade -y
- sudo apt install docker-ce -y
## Keybase
- curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
- sudo apt install ./keybase_amd64.deb -y
## Brave
- sudo apt install apt-transport-https curl -y
- sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
- echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
- sudo apt update
- sudo apt install brave-browser -y
### or
- sudo snap install brave -y
## Remmina
- sudo apt update -y
- sudo apt-get install software-properties-common
- sudo apt-add-repository ppa:remmina-ppa-team/remmina-next && sudo apt update && sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret
## Anydesk
- wget https://download.anydesk.com/linux/anydesk_6.1.0-1_amd64.deb -O anydesk.deb
- sudo apt install ./anydesk.deb -y
## Libreoffice
- sudo snap install libreoffice -y
## Obs Studio
- sudo apt install ffmpeg -y
- sudo add-apt-repository ppa:obsproject/obs-studio
- sudo apt install obs-studio -y
## VLC