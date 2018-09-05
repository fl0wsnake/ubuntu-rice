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

# user's private bin
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

# user's private bin
if [ -d "$HOME/.local/bin" ] ; then
  PATH="$HOME/.local/bin:$PATH"
fi

# personal scripts
if [ -d "$HOME/.config/scripts" ] ; then
  PATH="$HOME/.config/scripts:$PATH"
fi

# go binaries
if [ -d "$HOME/go/bin" ] ; then
  PATH="$HOME/go/bin:$PATH"
fi

# cargo binaries
if [ -d "$HOME/.cargo/bin" ] ; then
  PATH="$HOME/.cargo/bin":$PATH
fi

# temporary personal scripts
if [ -d "$HOME/sync/data/scripts" ] ; then
  PATH="$HOME/sync/data/scripts":$PATH
fi

# arcanist
if [ -x "$HOME/apps/arcanist/bin/arc" ] ; then
  PATH="$HOME/apps/arcanist/bin:$PATH"
fi

# android
if [ -d "/usr/lib/android-sdk/" ] ; then
  ANDROID_HOME="/usr/lib/android-sdk/"
  PATH="${ANDROID_HOME}tools:${ANDROID_HOME}platform-tools:${PATH}"
fi

export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/nvim
export TERMINAL=/usr/local/bin/st
export VISUAL=/usr/bin/nvim
export APPDATA_SYNC=$HOME/sync/data/appdata
export TEXMFDIR=/usr/local/share/texmf
