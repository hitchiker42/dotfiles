#exec stumpwm
#urxvt &
#compiz-manager
case "$2" in
    awesome)urxvt &
        awesome ;;
    xmonad)urxvt &
        xmonad;;
    stumpwm) stumpwm;;
    sawfish)urxvt&
        sawfish;;
    enlightenment);&
    e17) enlightenment_start;;
    *) stumpwm ;;
esac
