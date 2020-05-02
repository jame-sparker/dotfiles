# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

export PATH=$PATH:/usr/local/MiniZinc:/usr/local/MATLAB/R2017a/bin
export PATH="$HOME/.cargo/bin:$PATH"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib64

# mousepad natual horizontal scrolling
DEVICE=`xinput list | grep "04F3:300F Touchpad" | grep -oP "id=\K[0-9]*"`
PROPS=`xinput list-props $DEVICE | grep "Synaptics Scrolling" | grep -oP "\(\K[0-9]*"`

xinput --set-prop $DEVICE $PROPS -74 -74
xinput --set-prop $DEVICE "Synaptics Two-Finger Scrolling" 1 1

# remap Esc key and Caps lock
setxkbmap -option caps:swapescape

