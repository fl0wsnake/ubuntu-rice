#!/bin/bash

backupdir=./files

declare -a paths=(
"/home/kirill/.config/i3"
"/home/kirill/.config/polybar"
"/home/kirill/.config/ranger"
"/home/kirill/.config/termite"
"/home/kirill/.config/cava"
"/home/kirill/.config/scripts"
"/home/kirill/.config/mps-youtube"
"/home/kirill/.config/qutebrowser"
"/home/kirill/.config/zathura"

"/home/kirill/.config/transmission/settings.json"
"/home/kirill/.config/syncthing/config.xml"
"/home/kirill/.config/vis/config"
"/home/kirill/.config/xylosper/bomi/pref.json"
"/home/kirill/.config/compton.conf"
"/home/kirill/.config/keymap"
"/home/kirill/.config/wall.*"
"/home/kirill/.config/copyq/copyq.conf"
"/home/kirill/.mozilla/firefox/x1inby9a.default/chrome/userChrome.css"
"/home/kirill/.config/activities.txt"

"/home/kirill/.bashrc"
"/home/kirill/.zshrc"
"/home/kirill/.bash_profile"
"/home/kirill/.latexmkrc"
"/home/kirill/.oh-my-zsh/themes/my.zsh-theme"
"/home/kirill/.oh-my-zsh/custom"
"/home/kirill/.shutter/profiles"

"/home/kirill/.config/nvim/autoload"
"/home/kirill/.config/nvim/UltiSnips"
"/home/kirill/.config/nvim/init.vim"
"/home/kirill/.config/nvim/ginit.vim"

# ubuntu specific files
"/home/kirill/.profile"
"/home/kirill/.latexmkrc"

# /
"/etc/apt"
)

