DOTFILES

Install ttf-meslo-nerd playerctl

file i3 config

exec --no-startup-id picom
exec --no-startup-id kDrive
exec --no-startup-id flameshot &
exec --no-startup-id setxkbmap -layout us,it -option compose:rctrl
bindsym $mod+Shift+Print exec flameshot screen -p ~/Screenshots
bindsym $mod+Shift+Home exec flameshot screen -p ~/Screenshots
bindsym $mod+Print exec flameshot gui
bindsym $mod+Home exec flameshot gui
exec_always --no-startup-id ~/.config/polybar/launch_polybar.sh 
exec_always --no-startup-id feh --bg-scale ~/.config/backgrounds/background.png
bindsym $mod+space exec rofi -show combi
exec --no-startup-id setxkbmap us -option compose:rctrl
exec --no-startup-id xautolock -time 15 -locker "i3lock -i ~/.config/backgrounds/lock.png"

font pango:Meslo LGM Nerd 14

gaps inner 20

# class                 border  bground text    indicator child_border
client.focused          #1e293b #1e293b #FFFFFF #1e293b   #1e293b
client.focused_inactive #333333 #5F676A #FFFFFF #484E50   #5F676A
client.unfocused        #333333 #222222 #888888 #292D2E   #222222
client.urgent           #2F343A #900000 #FFFFFF #900000   #900000
client.placeholder      #000000 #0C0C0C #FFFFFF #000000   #0C0C0C

client.background       #FFFFFF

for_window [class=".*"] title_format " %title"
