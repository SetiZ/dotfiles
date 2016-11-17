# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

set HISTSIZE=10000

alias ls='ls --color'
alias l='ls'
alias la='ls -a'
alias mpv="mpv --vo=vdpau --hwdec=vdpau"
#alias mplayernv='mplayer -vo vdpau -vc ffh264vdpau'
#alias spotify='env WINEPREFIX="/home/sovan/.wine" wine C:\\users\\sovan\\Application\ Data\\Spotify\\spotify.exe& > /dev/null' 
alias vinyl='pactl load-module module-loopback'
#alias vlc='/home/sovan/src/vlc-2.0.0/vlc'
alias gvim="gvim 2>/dev/null"
alias vboxmod="sudo modprobe vboxdrv"
alias nextreboot="bash ~/.dotfiles/reboot.sh"

#echo nest
export ECHO_NEST_API_KEY="FG7MOXDVGZCOQIUJB"

source ~/.git-prompt.sh
source ~/.git-completion.sh
export PS1='\u@\h:\w$(__git_ps1)\$ '

source ~/.bash_chelseawolfe
