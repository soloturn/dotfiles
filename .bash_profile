#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export VISUAL="nvim"

# start wayland UI on login to tty2, X on login to tty3, sway to tty4
#if [[ -z $DISPLAY && $(tty) == /dev/tty2 && ( -z $XDG_SESSION_TYPE || $XDG_SESSION_TYPE == tty ) ]]; then
if [[ -z $DISPLAY && $(tty) == /dev/tty2 && $XDG_SESSION_TYPE == tty ]]; then
  QT_QPA_PLATFORM=wayland XDG_SESSION_TYPE=wayland exec dbus-run-session gnome-session
elif [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty3 ]]; then
  GDK_BACKEND=x11 exec startx
elif [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty4 ]]; then
  XKB_DEFAULT_LAYOUT=ch QT_QPA_PLATFORM=wayland QT_WAYLAND_DISABLE_WINDOWDECORATION=1 _JAVA_AWT_WM_NONREPARENTING=1 exec sway
fi
