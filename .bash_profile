# set 256 color profile where possible
if [[ $COLORTERM == gnome-* && $TERM == xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
    export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
    export TERM=xterm-256color
fi


# set up some colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# set up the prompt from a separate config file
[[ -f "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"

# set to use vi commands on the command line
set -o vi

# setup bash tab completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-7.0/nvvm/lib:$DYLD_LIBRARY_PATH
DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-7.0/lib:$DYLD_LIBRARY_PATH
PATH=/Developer/NVIDIA/CUDA-7.0/bin:$PATH
PATH=$HOME/bin:$PATH

MAPBOX_ACCESS_TOKEN=pk.eyJ1IjoidmFzdGNoYXJhZGUiLCJhIjoiMDk3NGMyZTk3ZjY3MjUzYzhmODVkZDQyZmMzNWIwZmMifQ.H6mlV6DxlYwWQiZ9q4vVzg

GOPATH=$HOME/gocode
export DYLD_LIBRARY_PATH PATH GOPATH MAPBOX_ACCESS_TOKEN
