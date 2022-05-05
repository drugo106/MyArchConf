
setxkbmap it &
nitrogen --restore &
export $(dbus-launch) &
xsetroot -cursor_name left_ptr &
/usr/lib/notification-daemon-1.0/notification-daemon &
export _JAVA_AWT_WM_NONREPARENTING=1 &
export AWT_TOOLKIT=MToolkit &
wmname compiz &
exec xmonad 
