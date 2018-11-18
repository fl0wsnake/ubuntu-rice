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

"$HOME/.config/syncthing/config.xml"
"$HOME/.config/xylosper/bomi/pref.json"
"$HOME/.config/compton.conf"
"$HOME/.config/keymap"
"$HOME/.config/wall.jpg"
"$HOME/.config/wall.png"
"$HOME/.config/copyq/copyq.conf"
"$HOME/.mozilla/firefox/x1inby9a.default/chrome/userChrome.css"
"$HOME/.config/activities.txt"
"$HOME/.config/vlc/vlcrc"

"$HOME/.bashrc"
"$HOME/.zshrc"
"$HOME/.latexmkrc"
"$HOME/.Xresources"
"$HOME/.oh-my-zsh/themes/my.zsh-theme"
"$HOME/.oh-my-zsh/custom"
"$HOME/.shutter/profiles"
"$HOME/.config/Dharkael/flameshot.ini"
"$HOME/.config/alacritty/alacritty.yml"

"$HOME/.config/nvim/autoload"
"$HOME/.config/nvim/UltiSnips"
"$HOME/.config/nvim/init.vim"
"$HOME/.config/nvim/ginit.vim"

# ubuntu specific files
"$HOME/.profile"
"$HOME/.latexmkrc"

# cron jobs
"/etc/cron.hourly/journal"
)

