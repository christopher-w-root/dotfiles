# set 256 color profile where possible
#if [[ $COLORTERM == gnome-* && $TERM == xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
#    echo "CROOT - term 1"
#    export TERM=gnome-256color
#elif infocmp xterm-256color >/dev/null 2>&1; then
#    echo "CROOT - term 2"
#    export TERM=xterm-256color
#fi

# source default .bashrc from ubuntu
source "/etc/skel/.bashrc"


# set up some colors
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad
#alias ls='ls -GFh'

# set up the prompt from a separate config file
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"

# set to use vi commands on the command line
set -o vi

# setup bash tab completion
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

LD_LIBRARY_PATH=/usr/lib/jvm/default-java/jre/lib/amd64/:/usr/lib/jvm/default-java/jre/lib/amd64/server:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=/usr/local/cuda/nvvm/lib:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=/usr/local/cuda/lib:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=/usr/local/mapd-deps/lib:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=/usr/lib/nvidia-367:$LD_LIBRARY_PATH
PATH=/usr/local/cuda/bin:$PATH
PATH=/usr/local/netbeans-8.1/bin/:$PATH
PATH=$HOME/bin:$HOME/gocode/bin:$PATH

MAPBOX_ACCESS_TOKEN=pk.eyJ1IjoidmFzdGNoYXJhZGUiLCJhIjoiMDk3NGMyZTk3ZjY3MjUzYzhmODVkZDQyZmMzNWIwZmMifQ.H6mlV6DxlYwWQiZ9q4vVzg

GOPATH=$HOME/gocode

# set HiDPI settings for macbook pro retina displays
# for QT applications
QT_DEVICE_PIXEL_RATIO=2

# GTK
# to scale UI elements by a factor of 2
GDK_SCALE=2
# to undo scaling of text
GDK_DPI_SCALE=0.5


export LD_LIBRARY_PATH PATH GOPATH MAPBOX_ACCESS_TOKEN QT_DEVICE_PIXEL_RATIO GDK_SCALE GDK_DPI_SCALE

alias openvpn='sudo openvpn --config ~/openvpn_config/mapdvpn-udp-1194-config.ovpn'

MAPD2_BE=$HOME/src/MapD/mapd2/
MAPD2_BE_BUILD=$HOME/src/MapD/mapd2/build
MAPD2_FE=$HOME/src/MapD/mapd2-frontend
MAPD2_FE_IMMERSE=$MAPD2_FE/projects/dashboard-v2
MAPD2_FE_MAPDC=$MAPD2_FE/libraries/mapdc

alias cd_mapd2='cd $MAPD2_BE'
alias cd_mapd2_build='cd $MAPD2_BE_BUILD'
alias cd_mapd2_fe='cd $MAPD2_FE'
alias cd_immerse='cd $MAPD2_FE_IMMERSE'
alias cd_mapdc='cd $MAPD2_FE_MAPDC'
