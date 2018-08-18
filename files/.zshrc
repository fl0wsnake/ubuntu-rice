# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/kirill/.oh-my-zsh

# https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="my"

# no immediately shared history
unsetopt INC_APPEND_HISTORY
setopt noextendedhistory
setopt nosharehistory

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
nvm
nvm-auto
npm
git
docker
sudo
git-open
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# bash vi mode
# set -o vi

alias setclip='xclip -selection c'
alias getclip='xclip -selection c -o'
alias trans='trans -no-ansi'
alias bins='ls -t /usr/bin | head -n 16'
alias watchtime='while true; do echo -ne "$(date +%H:%M:%S:%2N)\r"; done'
alias screen='import ~/stuff/images/screenshots/$(date +%Y-%m-%d-%T)-screenshot.png'
alias screen='tsnodemon -x "ts-node"'
alias hist='history | cut -c 8- | tac | nvim -c "BLines!" -'

alias find-shot='target=$(shot); echo $target; if [ -d "$target" ]; then cd "$target"; elif [ -e "$target" ]; then rifle "$target"; fi'
alias activities-shot='target=$(shot $(cat /home/kirill/.config/activities.txt | paste -sd " " -)); echo $target; if [ -d "$target" ]; then cd "$target"; elif [ -e "$target" ]; then rifle "$target"; fi'
alias trash='time=%d.%m.%Y-%H:%M:%S; dir=~/trash/$(date +$time) && mkdir -p "$dir" && mv -t "$dir"'

alias s='shot'
alias f='find-shot'
alias a='activities-shot'
alias t='trash'
alias e="$EDITOR"
alias x="ranger"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# source /usr/share/nvm/init-nvm.sh

# # Defer initialization of nvm until nvm, node or a node-dependent command is
# # run. Ensure this block is only run once if .bashrc gets sourced multiple times
# # by checking whether __init_nvm is a function.
# NVM_SCRIPT_DIR="/usr/share/nvm"
# if [ -s "$NVM_SCRIPT_DIR/nvm.sh" ] && [ ! "$(whence -w __init_nvm)" = function ]; then
#   export NVM_DIR="$HOME/.nvm"
#   [ -s "$NVM_SCRIPT_DIR/bash_completion" ] && . "$NVM_SCRIPT_DIR/bash_completion"
#   declare -a __node_commands=('nvm' 'node' 'npm' 'yarn' 'gulp' 'grunt' 'webpack')
#   function __init_nvm() {
#     for i in "${__node_commands[@]}"; do unalias $i; done
#     . "$NVM_SCRIPT_DIR/nvm.sh"
#     unset __node_commands
#     unset -f __init_nvm
#   }
#   for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
# fi

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm_auto_switch


if [ -f '/home/kirill/apps/google-cloud-sdk/path.zsh.inc' ]; then source '/home/kirill/apps/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/home/kirill/apps/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/kirill/apps/google-cloud-sdk/completion.zsh.inc'; fi
