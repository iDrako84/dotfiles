DOTFILES

Install ttf-nerd-fonts

file i3 config

exec --no-startup-id picom
exec_always --no-startup-id ~/.config/polybar/launch_polybar.sh 
exec_always --no-startup-id feh --bg-scale ~/Images/one-piece.png
bindsym $mod+space exec rofi -show combi
exec --no-startup-id setxkbmap us -option compose:rctrl

font pango:Meslo LGM Nerd 14

gaps inner 3

# class                 border  bground text    indicator child_border
client.focused          #282A2E #282A2E #FCAE1E #2E9EF4   #282A2E
client.focused_inactive #333333 #5F676A #FFFFFF #484E50   #5F676A
client.unfocused        #333333 #222222 #888888 #292D2E   #222222
client.urgent           #2F343A #900000 #FFFFFF #900000   #900000
client.placeholder      #000000 #0C0C0C #FFFFFF #000000   #0C0C0C

client.background       #FFFFFF