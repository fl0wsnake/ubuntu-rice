#!/bin/bash

backupdir=./files

declare -a paths=(
"/home/${USER}/.config/i3"
"/home/${USER}/.config/polybar"
"/home/${USER}/.config/ranger"
"/home/${USER}/.config/termite"
"/home/${USER}/.config/cava"
"/home/${USER}/.config/scripts"
"/home/${USER}/.config/mps-youtube"
"/home/${USER}/.config/qutebrowser"
"/home/${USER}/.config/zathura"

"/home/${USER}/.config/transmission/settings.json"
"/home/${USER}/.config/syncthing/config.xml"
"/home/${USER}/.config/vis/config"
"/home/${USER}/.config/xylosper/bomi/pref.json"
"/home/${USER}/.config/compton.conf"
"/home/${USER}/.config/keymap"
"/home/${USER}/.config/wall.*"
"/home/${USER}/.config/copyq/copyq.conf"
"/home/${USER}/.mozilla/firefox/x1inby9a.default/chrome/userChrome.css"
"/home/${USER}/.config/activities.txt"

"/home/${USER}/.bashrc"
"/home/${USER}/.zshrc"
"/home/${USER}/.bash_profile"
"/home/${USER}/.latexmkrc"
"/home/${USER}/.oh-my-zsh/themes/my.zsh-theme"
"/home/${USER}/.oh-my-zsh/custom"
"/home/${USER}/.shutter/profiles"

"/home/${USER}/.config/nvim/autoload"
"/home/${USER}/.config/nvim/UltiSnips"
"/home/${USER}/.config/nvim/init.vim"
"/home/${USER}/.config/nvim/ginit.vim"

# ubuntu specific files
"/home/${USER}/.profile"
"/home/${USER}/.latexmkrc"

# /
"/etc/apt"
)

