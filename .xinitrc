#xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --auto

source ~/.bashrc

#export XDG_SESSION_TYPE=wayland
export XDG_MENU_PREFIX=gnome-
exec gnome-session
