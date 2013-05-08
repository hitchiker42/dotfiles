# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

if [ -f $HOME/.bash_functions ]; then
    . $HOME/.bash_functions
fi
#Environment Variables
[[ -f ${HOME}/.bash_env ]] && . ${HOME}/.bash_env

#define shortcut to $HOME/usr/bin
if [[ -z $bin ]] && [[ -d $HOME/usr/bin ]]; then
    export bin=$HOME/usr/bin
fi

#add $bin to path
if [[ -n $bin ]]; then
    export PATH=$PATH:$bin
fi
#setup dircolors, colors are weird if I don't do this
eval `dircolors`

