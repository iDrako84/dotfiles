DOTFILES

Install yay

Install stow ttf-meslo-nerd playerctl redshift flameshot dolphin xsel noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra kdrive-bin picom feh

file i3 config

exec --no-startup-id picom
exec --no-startup-id kDrive
exec --no-startup-id flameshot &
exec --no-startup-id setxkbmap -layout us,it -option compose:rctrl
bindsym $mod+Shift+Print exec flameshot screen -p ~/Screenshots
bindsym $mod+Shift+Home exec flameshot screen -p ~/Screenshots
bindsym $mod+Print exec flameshot gui
bindsym $mod+Home exec flameshot gui
bindsym $mod+Shift+f exec dolphin
exec_always --no-startup-id ~/.config/polybar/launch_polybar.sh
exec_always --no-startup-id feh --bg-scale ~/.config/backgrounds/background.png
bindsym $mod+space exec rofi -show combi
exec --no-startup-id setxkbmap us -option compose:rctrl
exec --no-startup-id xautolock -time 15 -locker "i3lock -i ~/.config/backgrounds/lock.png"

font pango:Meslo LGM Nerd 14

# Power

set $mode_power [l]ock | [Shift+l]ogoff | [r]eboot | [s]hutdown
mode "$mode_power" {
bindsym l exec i3lock -i ~/.config/backgrounds/lock.png; mode "default"
bindsym Shift+l exec i3-msg exit
bindsym r exec systemctl reboot
bindsym s exec systemctl poweroff
bindsym Return mode "default"
bindsym Escape mode "default"
}
bindsym $mod+x mode "$mode_power"

# redshift modes

bindsym $mod+m mode "$mode_redshift"
set $mode_redshift Set colour temperature: (a)uto, (r)eset, (2)500K, (3)000K, (4)000K, (5)000K
set $kill_redshift pkill -9 redshift;
mode "$mode_redshift" {
bindsym a exec --no-startup-id "$kill_redshift redshift -P -t 5000:4000", mode "default"
    bindsym r exec --no-startup-id "$kill_redshift redshift -x", mode "default"
bindsym 2 exec --no-startup-id "$kill_redshift redshift -P -O 2500", mode "default"
    bindsym 3 exec --no-startup-id "$kill_redshift redshift -P -O 3000", mode "default"
bindsym 4 exec --no-startup-id "$kill_redshift redshift -P -O 4000", mode "default"
    bindsym 5 exec --no-startup-id "$kill_redshift redshift -P -O 5000", mode "default" # exit mode: "Enter" or "Escape"
bindsym Return mode "default"
bindsym Escape mode "default"
}

gaps inner 20

# class border bground text indicator child_border

client.focused #1e293b #1e293b #FFFFFF #1e293b #1e293b
client.focused_inactive #333333 #5F676A #FFFFFF #484E50 #5F676A
client.unfocused #333333 #222222 #888888 #292D2E #222222
client.urgent #2F343A #900000 #FFFFFF #900000 #900000
client.placeholder #000000 #0C0C0C #FFFFFF #000000 #0C0C0C

client.background #FFFFFF

for_window [class=".*"] title_format " %title"
