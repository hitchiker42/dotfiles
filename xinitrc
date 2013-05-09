#!/bin/bash
#Xinit file for use with startx
#because startx runs with xterm as first arguement if the actual first arguement
#isn't the full pathname to a program we need to do a case statement
#for the 2nd arguement, could add "$3" to end of the executables if we
#need to pass arguements to anything
case "$2" in
    i3)i3;;
    awesome)urxvt &
        awesome ;;
    xmonad)urxvt &
        xmonad;;
    stumpwm) stumpwm;;
    sawfish)urxvt&
        sawfish;;
    dswm) dswm;;
    enlightenment);&
    e17) enlightenment_start;;
    *) stumpwm ;;
esac
