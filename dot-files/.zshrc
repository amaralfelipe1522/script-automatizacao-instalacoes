# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/felipe/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(
    git
    dnf
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Run RRPG
alias rrpg="wine /home/felipe/.wine/dosdevices/c:/RRPG/rrpg.exe"

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias -- -="cd -"

# Get week number
alias week='date +%V'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Output text cases
alias lcase="tr '[:upper:]' '[:lower:]'"
alias ucase="tr '[:lower:]' '[:upper:]'"

# Slugify commad
# Example: echo "Esperança do vôo do avião" | iconv -t ascii//TRANSLIT | sed -r 's/[~\^]+//g' | sed -r 's/[^a-zA-Z0-9]+/-/g' | sed -r 's/^-+\|-+$//g' | tr A-Z a-z
alias slugify="iconv -t ascii//TRANSLIT | sed -r 's/[~\^]+//g' | sed -r 's/[^a-zA-Z0-9]+/-/g' | sed -r 's/^-+\|-+$//g' | tr A-Z a-z"

# Get my external/internal ip
alias ipEx="curl -sSL 'https://api.ipify.org?format=json'"
alias ipIn="hostname -I"

# Check if you is a tor client
alias isTor="curl -sSL 'https://check.torproject.org/api/ip'"

# Install Windows application with Wine
# https://github.com/scottyhardy/docker-wine
# Examples: 
#   - "./docker-wine wine notepad"
#   - "./docker-wine" to open bash
#   - "wine explorer" launch windows explorer
alias docker-wine="Documentos/workspace/docker-wine"

# Speed test
alias speedtest="wget -O /dev/null http://speed.transip.nl/100mb.bin"

# Links guide in Onion Web
alias guideOnion='echo "http://underdiriled6lvdfgiw4e5urfofuslnz7ewictzf76h4qb73fxbsxad.onion/"'

# IDE GoLand
alias goland='/home/felipe/GoLand-2021.1.3/bin/goland.sh'

relies_on(){
	for container in "$@"; do
		local state
		state=$(docker inspect --format "{{.State.Running}}" "$container" 2>/dev/null)

		if [[ "$state" == "false" ]] || [[ "$state" == "" ]]; then
			echo "$container is not running, starting it for you."
			$container
		fi
	done
}

# Find application
findApp () { "dpkg -l | grep -i $1" }

# Check location of a ip
trackIp () { curl -sSL "http://ip-api.com/json/$1" }

# Unshorten url
unshorten () { curl -sSL "https://unshorten.me/json/$1" }

# Scan file with virus total
scanFileWithVirusTotal () {
    curl -sSL -F "file=@$1" -F \
    apikey=c3921b412148e82be17ed20a9892b40595fd1bca3b4178edd1ba49ae1841bac3 \
    https://www.virustotal.com/vtapi/v2/file/scan
}

scanUrlWithVirusTotal () {
    curl -sSL --request POST \
    --url 'https://www.virustotal.com/vtapi/v2/url/scan' \
    -d apikey=c3921b412148e82be17ed20a9892b40595fd1bca3b4178edd1ba49ae1841bac3 \
    -d "url=$1"
}

# Create a new directory and enter it
mk() {
  mkdir -p "$@" && cd "$@"
}

prodesp() {
    docker run -it --rm \
    --cap-add=NET_ADMIN \
    --device=/dev/ppp \
    -e HOST='200.144.3.32' \
    -e PORT='443' \
    -e USERNAME='40174303840' \
    -e PASSWORD='1522@Covid' \
    -e TRUSTALL=true \
    -e PORT_BINDS="3389:10.2.100.196:3389" \
    -p 3389:3389 \
    --name prodesp-vpn \
    gerardojunior/openfortivpn-nat
}

dpesp() {
    docker run -it --rm \
    --cap-add=NET_ADMIN \
    --device=/dev/ppp \
    -e HOST='vpn.defensoria.sp.def.br' \
    -e PORT='443' \
    -e USERNAME='amaral.felipe' \
    -e PASSWORD='Covid@1522' \
    -e TRUSTALL=true \
    -p 3389:3389 \
    --name dpesp-vpn \
    gerardojunior/openfortivpn-nat
}

# prodesp-ssh() { 
#         local ssh_uri=$(echo $@ | sed "s/tcp:\/\//ssh:\/\/gerardo-junior@/") 
#         docker context update prodesp-workstation --docker "host=$ssh_uri" || true
#         autossh -o StrictHostKeyChecking=no -o ServerAliveCountMax=3 -L 8888:localhost:8888 $ssh_uri
# }

spotify() {
    docker run -d \
        -v /etc/localtime:/etc/localtime:ro \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        -e DISPLAY=unix$DISPLAY \
        --device /dev/snd:/dev/snd \
        -v $HOME/.spotify/config:/home/spotify/.config/spotify \
        -v $HOME/.spotify/cache:/home/spotify/spotify \
        --name spotify \
        jess/spotify
}

# Dockerfile in https://github.com/webanck/docker-wine-steam
steam() {
	/home/felipe/Documentos/workspace/docker-wine-steam/launcher.sh
}

fightcade() {
    /home/felipe/Downloads/Fightcade/Fightcade2.sh
}

tor() {
    docker run -d --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
	-v /dev/snd:/dev/snd \
	-v /dev/shm:/dev/shm \
	-v /etc/machine-id:/etc/machine-id:ro \
	-e DISPLAY=unix$DISPLAY \
	jess/tor-browser
}

docker-remmina() {
    docker run -d --rm \
    --name=remmina \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Europe/London \
    -p 3000:3000 \
    -v /path/to/config:/config \
    --name remmina \
    ghcr.io/linuxserver/remmina
}

vlc(){
	relies_on pulseaudio

	docker run -d --rm \
        -v "$(pwd)":/data \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-e "DISPLAY=unix${DISPLAY}" \
		-e GDK_SCALE \
		-e GDK_DPI_SCALE \
		-e QT_DEVICE_PIXEL_RATIO \
		--link pulseaudio:pulseaudio \
		-e PULSE_SERVER=pulseaudio \
		--group-add audio \
		--group-add video \
		-v "${HOME}/Torrents:/home/vlc/Torrents" \
		--device /dev/dri \
		--name vlc \
		jess/vlc
}

pulseaudio(){
	docker run -d --rm \
		-v /etc/localtime:/etc/localtime:ro \
		--device /dev/snd \
		-p 4713:4713 \
		--group-add audio \
		--name pulseaudio \
		jess/pulseaudio
}
