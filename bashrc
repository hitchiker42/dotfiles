# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
if [ -f $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

if [ -f $HOME/.bash_functions ]; then
    source $HOME/.bash_functions
fi

#define shortcut to $HOME/usr/bin
if [[ -z $bin ]] && [[ -d $HOME/usr/bin ]]; then
    export bin=$HOME/usr/bin
fi

#add $bin to path
if [[ -n $bin ]]; then
    export PATH=$PATH:$bin
fi

#to do, add ~/usr/lib(64) to ld search path
EDITOR=zile

eval `dircolors`

