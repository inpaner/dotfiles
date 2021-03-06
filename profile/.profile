# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
# if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
#    if [ -f "$HOME/.bashrc" ]; then
#	. "$HOME/.bashrc"
#    fi
#fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
# Ubuntu make installation of Ubuntu Make binary symlink
PATH=/home/inpaner/.local/share/umake/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export GTK2_RC_FILES=/home/inpaner/.gtkrc-2.0

# setxkbmap -option caps:ctrl_modifier
# setxkbmap -option shift:both_capslock
# setxkbmap -option ctrl:swapcaps_hyper
# xcape -e 'Control_L=Escape' -t 150
setxkbmap -option compose:ralt
xset dpms 0 0 0
xset -dpms s off
xrandr --output DP-0 --mode 2560x1440 --rate 74.920

export PATH="$HOME/.poetry/bin:$PATH"
