# .bashrc
#if not interactive shell, return
[[ $- != *i* ]] && return
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases, if they exist
if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliasesf
fi
# User specific functions, if they exist
if [ -f $HOME/.bash_functions ]; then
    . $HOME/.bash_functions
fi

#Environment Variables, if any
[[ -f ${HOME}/.bash_env ]] && . ${HOME}/.bash_env

#define shortcut to $HOME/usr/bin
if [[ -z $bin ]] && [[ -d $HOME/usr/bin ]]; then
    export bin=$HOME/usr/bin
fi

#add $bin to path
if [[ -n $bin ]]; then
    export PATH=$PATH:$bin
fi

EDITOR=zile

#this will fuck up rsync,etc so we check for interactive shell first
command cowsay $(fortune -a)