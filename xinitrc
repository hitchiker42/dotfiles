#!/bin/bash
#Xinit file for use with startx
#because startx runs with xterm as first arguement if the actual first arguement
#isn't the full pathname to a program we need to do a case statement
#for the 2nd arguement, could add "$3" to end of the executables if we
#need to pass arguements to anything
xrdb merge ${HOME}/.Xresources
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/* ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi
case "$2" in
    awesome)urxvt &
        awesome ;;
    dswm) dswm;;
    dwm) urxvt &
        dwm;;
    e17|enlightenment) enlightenment_start;;
    gnome) exec gnome-session;;
    i3)i3;;
    lxde) startlxde;;
    notion) urxvt &
        notion;;
    qtile) urxvt &
        qtile ;;
    sawfish)urxvt&
        sawfish;;
    spectrwm) urxvt &
        spectrwm;;
    subtle) subtle;;
    xfce) exec startxfce4;;
    xmonad)urxvt &
        xmonad;;
    stumpwm|*) stumpwm ;;
esac
