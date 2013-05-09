# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases, if they exist 
if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi
# User specific functions, if they exist 
if [ -f $HOME/.bash_functions ]; then
    . $HOME/.bash_functions
fi
#Environment Variables, if any
[[ -f ${HOME}/.bash_env ]] && . ${HOME}/.bash_env

#define shortcut to $HOME/usr/bin, if it exists
if [[ -z $bin ]] && [[ -d $HOME/usr/bin ]]; then
    export bin=$HOME/usr/bin
fi

#add $bin to path, again if it exists
if [[ -n $bin ]]; then
    export PATH=$PATH:$bin
fi
#setup dircolors, colors are weird if I don't do this
eval `dircolors`

