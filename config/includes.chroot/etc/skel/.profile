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

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.bin" ] ; then
    PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.bin/bin" ] ; then
    PATH="$HOME/.bin/bin:$PATH"
fi

if [ -d "/usr/local/android-ndk" ] ; then
    PATH="/usr/local/android-ndk:$PATH"
fi

if [ -d "/usr/local/android-sdk" ] ; then
    PATH="/usr/local/android-sdk:$PATH"
    PATH="/usr/local/android-sdk/tools:$PATH"
#    Normally, default plaform tools will be provided by their stable
#    Debian packages rather than the verson in the standalone SDK. If you
#    want to use the SDK versions uncomment the following line or source
#    the adb_aliases file into your terminal(command ". adb_aliases on.")
#    adb_aliases will only export the variables to that terminal and it's
#    children.
#    PATH="/usr/local/android-sdk/platform-tools:$PATH"
fi

if [ -f "$HOME/.Xsession" ]; then
    . "$HOME/.Xsession"
elif [ -f "$HOME/.xinitrc" ]; then
    . "$HOME/.xinitrc"
fi

# Set and load user settings for svirfneblin environment
if [ -f "$HOME/.userrc" ]; then
    . "$HOME/.userrc"
fi

# Set and load per-user host aliases
if [ -f "$HOME/.hosts" ]; then
    export HOSTALIASES="$HOME/.hosts"
fi
