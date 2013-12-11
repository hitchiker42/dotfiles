#! /bin/bash
if [ 0 -eq $(synclient | grep "TouchpadOff" | awk '{print $3}') ]; then 
    synclient TouchpadOff=1    
    local MOUSE_POS=$(cat .mouse_pos)
    echo $(xmousepos | awk '{print $1" "$2}') > $HOME/.mouse_pos
    xte -x $DISPLAY "mousemove $MOUSE_POS"
else 
    synclient TouchpadOff=0
    xte -x $DISPLAY "mousemove $(cat .mouse_pos)"
    echo "10000 10000" > $HOME/.mouse_pos
fi
