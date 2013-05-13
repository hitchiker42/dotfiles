#Bash functions
#Simple ideas for useful bash functions are any comands
#which need given arguments inserted in weird places and such

#Apply zenburn theme on a console
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
#change 2 finger vertical scrolling, mainly for games
vert(){
synclient VertTwoFingerScroll="$1"
}
#search current directory, why not just an alias, I don't know
search(){
ls | grep "$@"
}
#search processes
ps-search(){
ps -e | grep "$@"
}
#rename a file to its md5sum + a given extension
md5-rename(){
if [[ -n "$1" ]] && [[ -n "$2" ]] && [[ -f "$1" ]]; then
 mv -f "$1" `md5sum "$1" | awk '{print $1}'`.$2 &>/dev/null
else
 echo -e 'usage: md5-rename filename extension\n\trename filename to `md5sum filename`.extension'
fi
}
#set apple function keys, 1 for media keys, 2 for fn keys, 0 for always fn keys
fn-keys(){
echo "$1" | sudo tee /sys/module/hid_apple/parameters/fnmode
}
qemu(){
  sudo qemu-system-x86_64 -enable-kvm -m 4G "$@"
}
background(){
"$@" &>/dev/null &
disown
}