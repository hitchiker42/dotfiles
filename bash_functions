zenburn(){
if [[ $TERM = linux ]] ; then
    echo -en "\e]P01e2320" # zenburn black (normal black)
    echo -en "\e]P8709080" # bright-black  (darkgrey)
    echo -en "\e]P1705050" # red           (darkred)
    echo -en "\e]P9dca3a3" # bright-red    (red)
    echo -en "\e]P260b48a" # green         (darkgreen)
    echo -en "\e]PAc3bf9f" # bright-green  (green)
    echo -en "\e]P3dfaf8f" # yellow        (brown)
    echo -en "\e]PBf0dfaf" # bright-yellow (yellow)
    echo -en "\e]P4506070" # blue          (darkblue)
    echo -en "\e]PC94bff3" # bright-blue   (blue)
    echo -en "\e]P5dc8cc3" # purple        (darkmagenta)
    echo -en "\e]PDec93d3" # bright-purple (magenta)
    echo -en "\e]P68cd0d3" # cyan          (darkcyan)
    echo -en "\e]PE93e0e3" # bright-cyan   (cyan)
    echo -en "\e]P7dcdccc" # white         (lightgrey)
    echo -en "\e]PFffffff" # bright-white  (white)
else
echo "Not running on a console"
fi
}
