# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# for python3, instead of ASCII
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

# scale alacritty with dpi
export WINIT_HIDPI_FACTOR=1.3125

# BROWSER
if [ -x '/usr/bin/firefox' ]; then
  export BROWSER="/usr/bin/firefox"
elif [ -x '/usr/bin/chromium-browser' ]; then
  export BROWSER="/usr/bin/google-chrome"
else
  export BROWSER="/usr/bin/chromium-browser"
fi

# EDITOR
if [ -x '/usr/bin/nvim' ]; then
  export EDITOR="nvim"
  export VISUAL="nvim"
elif [ -x '/usr/bin/vim' ]; then
  export EDITOR="/usr/bin/vim"
  export VISUAL="/usr/bin/vim"
else
  export EDITOR="/usr/bin/nano"
  export VISUAL="/usr/bin/nano"
fi

# TERMINAL
if [ -x '/usr/local/bin/alacritty' ]; then
  export TERMINAL="/usr/local/bin/alacritty"
elif [ -x '/usr/local/bin/st' ]; then
  export TERMINAL="/usr/local/bin/st"
else
  export TERMINAL="/usr/bin/gnome-terminal"
fi

# EXPLORER
if [ -x '/usr/bin/ranger' ]; then
  export EXPLORER="/usr/bin/ranger"
elif [ -x '/usr/bin/nnn' ]; then
  export EXPLORER="/usr/bin/nnn"
else
  export EXPLORER="nvim"
fi

# others
export APPDATA_SYNC="$HOME/sync/data/appdata"
export TEXMFDIR="/usr/local/share/texmf"
export ANDROID_HOME="/usr/lib/android-sdk"
export SEARCH_COLORS='hl:33,hl+:33'
export FZF_DEFAULT_OPTS="--color $SEARCH_COLORS"

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
if [ -d "$ANDROID_HOME" ] ; then
  PATH="$ANDROID_HOME/tools:$PATH"
  PATH="$ANDROID_HOME/platform-tools:$PATH"
fi

export PATH="$HOME/.cargo/bin:$PATH"
