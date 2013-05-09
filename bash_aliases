#bash Aliases
#simple/common alises
alias ls="ls --color=auto"
alias l=ls
alias ll='ls -l'
alias la='ls -lA'
alias cd..="cd .."
alias sizes="du -sh *"
alias latest='ls -t | head'
alias untar='tar -xf'
alias findhere="find -maxdepth 1"
alias em="emacs -Q -nw"
alias emacsc=emacsclient
alias emacscx='emacsclient -c'
alias emacs-compile='emacs -batch -Q -f batch-byte-compile'
alias py=python3
alias rsync="rsync -av"
#X aliases
alias horiz='synclient HorizTwoFingerScroll=1'
alias xclip="xclip -selection clipboard"
alias 1920='xrandr -s 1920x1200'
alias 1024='xrandr -s 1024x768'
alias 800='xrandr -s 800x600'
#yum shortcuts
alias ys="yum search"
alias yp="yum info"
alias yl="yum list"
alias yu="sudo yum update"
alias yi="sudo yum install"
alias yr="sudo yum remove"
#git shortcuts
alias gi="git commit"
alias gu="git pull"
alias gp="git push"
alias ga="git add"
alias gb="git branch"alias sizes="du -sh"
#pacman shortcuts
alias pacin='sudo pacman -S'
alias pacs='pacman -Ss'
alias pacupg='sudo pacman -Syu'
alias pacinl='sudo pacman -U'
alias pacrm='sudo pacman -R'
#less common program shortcuts/aliases
alias ldc=ldc2
alias sbcl=/home/tucker/usr/bin/sbcl
alias qemu='/home/tucker/usr/bin/qemu-system-x86_64'
alias sbcl-term='sbcl --userinit /home/tucker/.sbcl-term'
alias jisho=tagainijisho
alias core-temp='sensors | grep Core'
alias wine_jp='LANG=ja_JP.UTF-8 wine'
