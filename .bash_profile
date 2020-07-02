#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

#npm global
export PATH=~/.npm-global/bin:$PATH

#XDG Base Directory specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem
export SCREENRC="$XDG_CONFIG_HOME"/screen/screenrc
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export HISTFILE="$XDG_DATA_HOME"/bash/history

#cargo bin path
export PATH="$CARGO_HOME/bin:$PATH"

#ruby bin path
export PATH="$GEM_HOME/bin:$PATH"


#start xorg
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx "$XDG_CONFIG_HOME/X11/xinitrc"; fi
