#!/bin/bash
#Xinit file for use with startx
#because startx runs with xterm as first arguement if the actual first arguement
#isn't the full pathname to a program we need to do a case statement
#for the 2nd arguement, could add "$3" to end of the executables if we
#need to pass arguements to anything
xrdb merge ${HOME}/.Xresources
xsetroot -cursor_name left_ptr
setxkbmap -option terminate:ctrl_alt_bksp -option altwin:ctrl_win\
 -option caps:escape dvorak
case "$2" in
    2bwm)2bwm;;
    awesome)urxvt &
        awesome ;;
    dswm) dswm;;
    dwm) urxvt &
        dwm;;
    e17|enlightenment) enlightenment_start;;
    gnome) exec gnome-session;;
    fluxbox)startfluxbox;;
    i3)i3;;
    lxde) startlxde;;
    notion) urxvt &
        notion;;
    openbox)exec openbox-session;;
    qtile) urxvt &
        qtile ;;
    sawfish)urxvt&
        sawfish;;
    spectrwm) urxvt &
        spectrwm;;
    subtle) subtle;;
    xfce) exec startxfce4;;
    xmonad) xmodmap -e "keycode 0x6c = Super_R"
            xmodmap -e "remove mod1 = Super_R"
            xmodmap -e "add mod3 = Super_R"
        urxvt &
        xmonad;;
    stumpwm) stumpwm ;;
    *)i3;;
esac
