#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export VISUAL="nvim"

# start wayland UI on login to tty1, X on login to tty2, sway to tty3
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]] && [[ -z $XDG_SESSION_TYPE ]]; then
  XDG_SESSION_TYPE=wayland exec dbus-run-session gnome-session
elif [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]] && [[ -z $XDG_SESSION_TYPE ]]; then
  GDK_BACKEND=x11 startx
elif [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty3 ]]; then
  XKB_DEFAULT_LAYOUT=ch exec sway
fi
