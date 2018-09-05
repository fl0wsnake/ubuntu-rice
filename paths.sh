#!/bin/bash

backupdir=./files

declare -a paths=(
"$HOME/.config/i3"
"$HOME/.config/polybar"
"$HOME/.config/ranger"
"$HOME/.config/termite"
"$HOME/.config/cava"
"$HOME/.config/scripts"
"$HOME/.config/mps-youtube"
"$HOME/.config/qutebrowser"
"$HOME/.config/zathura"

"$HOME/.config/transmission/settings.json"
"$HOME/.config/syncthing/config.xml"
"$HOME/.config/vis/config"
"$HOME/.config/xylosper/bomi/pref.json"
"$HOME/.config/compton.conf"
"$HOME/.config/keymap"
"$HOME/.config/wall.jpg"
"$HOME/.config/wall.png"
"$HOME/.config/copyq/copyq.conf"
"$HOME/.mozilla/firefox/x1inby9a.default/chrome/userChrome.css"
"$HOME/.config/activities.txt"

"$HOME/.bashrc"
"$HOME/.zshrc"
"$HOME/.bash_profile"
"$HOME/.latexmkrc"
"$HOME/.oh-my-zsh/themes/my.zsh-theme"
"$HOME/.oh-my-zsh/custom"
"$HOME/.shutter/profiles"

"$HOME/.config/nvim/autoload"
"$HOME/.config/nvim/UltiSnips"
"$HOME/.config/nvim/init.vim"
"$HOME/.config/nvim/ginit.vim"

# ubuntu specific files
"$HOME/.profile"
"$HOME/.latexmkrc"
)

