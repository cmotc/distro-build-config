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
    export PATH="$HOME/.bin:$PATH"
fi
if [ -d $HOME/.local/bin/ ] ; then
    export PATH=$HOME/.local/bin:$PATH
#    PATH=$HOME/.bin/android-ndk-r10d/:$PATH
fi
# set PATH so it includes android SDK if it exists
if [ -d $HOME/.bin/android-sdk/'tools' ] ; then
    export PATH=$HOME/.bin/android-sdk/'tools':$PATH
    export ANDROID_SDK=$HOME/.bin/android-sdk/
#    export PATH=$HOME/.bin/android-sdk/'tools/lib':$PATH
fi
# set PATH so it includes android NDK if it exists
if [ -d $HOME/.bin/android-ndk-r10d/ ] ; then
    export PATH=$HOME/.bin/android-ndk-r10d:$PATH
    export ANDROID_NDK_HOME=$HOME/.bin/android-ndk-r10d
#    PATH=$HOME/.bin/android-ndk-r10d/:$PATH
fi
# set PATH so it includes android NDK generated toolchain if it exists
if [ -d /usr/arm-linux-androideabi/bin ] ; then
    export PATH=/usr/arm-linux-androideabi/bin:$PATH
#    PATH="$PATH:/usr/arm-linux-androideabi/bin":$PATH
fi

if [ -f /usr/bin/conkyswitcher ] ; then
    . /usr/bin/conkyswitcher
fi

history -c