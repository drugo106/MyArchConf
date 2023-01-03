
setxkbmap it &
nitrogen --restore &
export $(dbus-launch) &
xsetroot -cursor_name left_ptr &
/usr/lib/notification-daemon-1.0/notification-daemon &
#export _JAVA_AWT_WM_NONREPARENTING=1 &
#export AWT_TOOLKIT=MToolkit &
wmname diomaiale &
play -v 0 ~/SoundEffect/ping-volume.flac &  #load in memory ping-volume.flac
exec xmonad 
