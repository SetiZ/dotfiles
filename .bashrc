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

#echo nest
export ECHO_NEST_API_KEY="FG7MOXDVGZCOQIUJB"

#source /opt/ros/diamondback/setup.bash
#export ROS_ROOT="/opt/ros/diamondback/ros"
#export PATH="/opt/ros/diamondback/ros/bin:$PATH"
#export PYTHONPATH="/opt/ros/diamondback/ros/core/roslib/src:$PYTHONPATH"
#export ROS_PACKAGE_PATH="/home/sovan/src/ros_workspace:/opt/ros/diamondback/stacks"

# XDE
#export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/sovan/compil/julesverne/xde/bin"
#export RTT_COMPONENT_PATH=./ocl

source ~/.git-prompt.sh
source ~/.git-completion.sh
export PS1='\u@\h:\w$(__git_ps1)\$ '

source ~/.bash_julesverne
