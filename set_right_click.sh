#!/bin/bash
reset_right_click(){
    synclient 'RightButtonAreaLeft=0' 'RightButtonAreaRight=0' 'RightButtonAreaTop=0' 'RightButtonAreaBottom=0'
    exit 0
}
usage=".set_right_click [horizontal% vertical%]\nif given a 0 argument clear any right click area"
if [[ -n $1 ]]; then
    [[ $1 -eq 0 ]] && reset_right_click
    if [[ -n $2 ]]; then
        [[ $2 -eq 0 ]] && reset_right_click
        HorizPercent=$1
        VertPercent=$2
    else
        echo $usage
        reset_right_click
    fi
else
    HorizPercent=0.5
    VertPercent=0.7
fi
LeftEdge=$(synclient | grep " LeftEdge" | awk '{print $3}')
#echo $LeftEdge
RightEdge=$(synclient | grep " RightEdge" | awk '{print $3}')
#echo $RightEdge
TopEdge=$(synclient | grep " TopEdge" | awk '{print $3}')
#echo $TopEdge
BottomEdge=$(synclient | grep " BottomEdge" | awk '{print $3}')
#echo $BottomEdge
HorizontalSpan=$((${RightEdge} - ${LeftEdge}))
VerticalSpan=$((${BottomEdge} - ${TopEdge}))
#add support for arguments later
LeftEdge=$(echo $LeftEdge | sed s/-/_/)
TopEdge=$(echo $TopEdge | sed s/-/_/)
RBAreaLeft=$(echo "$LeftEdge $HorizontalSpan $HorizPercent * + p" | dc)
RBAreaRight=$RightEdge
RBAreaTop=$(echo "$TopEdge $VerticalSpan $VertPercent * + p" | dc)
RBAreaBottom=$BottomEdge
synclient "RightButtonAreaLeft=$RBAreaLeft" "RightButtonAreaRight=$RBAreaRight" 
synclient "RightButtonAreaTop=$RBAreaTop" "RightButtonAreaBottom=$RBAreaBottom"
