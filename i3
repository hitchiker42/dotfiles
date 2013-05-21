# i3 config file
#set mod to alt
#to set mod to just right alt add(as 3 lines, not sure if ; seperates stuff)
#xmodmap -e "keycode 0x6c = R_Super;remove mod1 = R_Super;add mod3 = R_Super"
#sets right alt key to right super, then sets right super to mod3
#if I do this differently I can't switch virtual terminals
set $mod Mod1

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar
# Console font{} block below. ISO 10646 = Unicode
# $font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# Freetype font, via pango
font pango:DejaVu Sans Mono 10

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# make it so the touchpad doesn't steal focus
focus_follows_mouse no

# Boarders on edges of screen?(none/vertical/horizontal/both)
hide_edge_boarders both
# Boarders on new windows(normal|1pixel|none|pixel n)
# weirdly I like the boarders
new_window normal

# pretty self explanitory
default_orientation horizontal

# start a terminal
bindsym $mod+Return exec i3-sensible-terminal

# start dmenu (a program launcher)
bindsym $mod+d exec dmenu_run

# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# start emacs
bindsym $mod+e exec emacs

# start conkeror
bindsym $mod+i exec conkeror

# switch to a window (install with pip install quickswitch-i3)
bindsym $mod+q exec quickswitch.py
# change focus
bindsym $mod+b focus left
bindsym $mod+n focus down
bindsym $mod+p focus up
bindsym $mod+f focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+B move left
bindsym $mod+Shift+N move down
bindsym $mod+Shift+P move up
bindsym $mod+Shift+F move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+shift+v split v

# enter fullscreen mode for the focused container
bindsym $mod+u fullscreen

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+t layout tabbed
bindsym $mod+period layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
bindsym $mod+c focus child

# kill focused window
bindsym $mod+Shift+k kill

# switch to workspace
bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+2 move container to workspace 2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+7 move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace 9
bindsym $mod+Shift+0 move container to workspace 10

# reload the configuration file
bindsym $mod+Shift+J reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+y restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+backslash exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym b resize shrink width 10 px or 10 ppt
        bindsym n resize grow height 10 px or 10 ppt
        bindsym p resize shrink height 10 px or 10 ppt
        bindsym f resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

#scratchpad
#move scratchpad moves current window to special scratchpad workspace
bindsym $mod+shift+minus move scratchpad
#scratchpad show toggles the scratchpad as a floating window over everything
bindsym $mod+minus scratchpad show

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
        status_command i3status
}

#TODO:Colors
#colorclass border background text indicator
#Where colorclass can be one of:
#client.focused A client which currently has the focus.
#client.focused_inactive A client which is the focused one of its container,\
# but it does not have the focus at the moment.
#client.unfocused A client which is not the focused one of its container.
#client.urgent A client which has its urgency hint activated.

#defaults
# # class                 border  backgr. text    indicator
# client.focused          #4c7899 #285577 #ffffff #2e9ef4
# client.focused_inactive #333333 #5f676a #ffffff #484e50
# client.unfocused        #333333 #222222 #888888 #292d2e
# client.urgent           #2f343a #900000 #ffffff #900000

#Run on startup
#i3-msg "command" excutes i3 command