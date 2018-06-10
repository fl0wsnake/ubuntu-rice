#!/bin/bash

backupdir=./files

declare -a paths=(
".config/i3"
".config/polybar"
".config/ranger"
".config/termite"
".config/cava"
".config/scripts"
".config/mps-youtube"
".config/qutebrowser"
".config/zathura"

".config/vis/config"
".config/xylosper/bomi/pref.json"
".config/compton.conf"
".config/keymap"
".config/wall.*"

".bashrc"
".zshrc"
".bash_profile"
".latexmkrc"
".oh-my-zsh/themes/my.zsh-theme"
".oh-my-zsh/custom"

".config/nvim/autoload"
".config/nvim/UltiSnips"
".config/nvim/init.vim"
".config/nvim/ginit.vim"

# ubuntu specific files
".profile"
".latexmkrc"
)

