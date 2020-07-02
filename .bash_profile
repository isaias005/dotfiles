#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#start X
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx "$XDG_CONFIG_HOME/X11/xinitrc"; fi
