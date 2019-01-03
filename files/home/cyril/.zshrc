# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

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
npm
git
docker
sudo
git-open
zsh-autosuggestions
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

alias sc='xclip -selection c'
alias gc='xclip -selection c -o'
alias bins='ls -t /usr/bin | head -n 16'
alias watches='while true; do echo -ne "$(date +%H:%M:%S:%2N)\r"; done'

# flags
alias du='du -csh'
alias ls='ls -a1tr --color=always'
alias ag="ag --color-match '1;37'"
# everyday stuff
alias cal='cal -y'
alias t='touch'
alias e='echo'
alias md='mkdir'
alias w='which'
alias f='p=$(fzf-paths); echo $p; if [ -d "$p" ]; then; cd "$p"; elif [ -e "$p" ]; then; rifle "$p"; fi'
alias F='p=$(fzf-paths-ignored); echo $p; if [ -d "$p" ]; then; cd "$p"; elif [ -e "$p" ]; then; rifle "$p"; fi'
alias a='p=$(fzf-activities); echo $p; if [ -d "$p" ]; then; cd "$p"; elif [ -e "$p" ]; then; rifle "$p"; fi'
# alias ad='cd $(dirname $(fzf-activities))'
# alias fd='cd $(dirname $(fzf-paths))'
# alias Fd='cd $(dirname $(fzf-paths-ignored))'
alias e="nvim"
alias x='ranger'
alias c='clear'
alias i='noh sxiv .; exit'
alias j="journal"
# git
alias gec="git status -s | pcregrep -o1 '\ *(?:[AM]|\?\?)\ *(.+)' | while read line; do noh $TERMINAL -e $EDITOR \$line; done"
alias gam='git ls-files --modified | xargs git add'
alias gbm='git branch -m'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gtree='git log --graph --full-history --all --color --date=short --pretty=format:"%Cred%x09%h %Creset%ad%Cblue%d %Creset %s %C(bold)(%an)%Creset"'
alias g='git'
alias go='git open'
alias gs='git status'
alias grb='git rebase'
alias grbnv='git rebase --no-verify'
alias gch='git checkout'
alias gchd='git checkout --detach HEAD'
alias gcoa='git commit --amend -m'
alias gcoane='git commit --amend --no-edit --no-verify'
alias gcoanenv='git commit --amend --no-edit --no-verify'
alias gcoanvne='git commit --amend --no-edit --no-verify'
alias gconv='git commit --no-verify -m'
alias gco='git commit -m'
alias gcon='git commit --no-verify -m'
alias gdc='git diff --cached'
alias gbh='git rev-parse --abbrev-ref HEAD'
alias groot='git rev-parse --show-toplevel'
alias gbc='gbh'
alias gbb='git show-branch | grep "*" | grep -v "$(git rev-parse --abbrev-ref HEAD)" | head -n1 | sed "s/.*\[\(.*\)\].*/\1/" | sed "s/[\^~].*//"'
alias grl='git rev-list'
alias grlb='grl --boundary ...`gbb`'
alias grlbb='grlb | grep "^-" | cut -c2-'
alias gdb='gd `gbb`'
# git pull all branches
alias gpa='git branch -r | grep -v "\->" | while read remote; do git branch --track "${remote#origin/}" "$remote"; done; git fetch --all && git pull --all'
# Delete local branches that squash-merged to `master`. Forked from https://github.com/not-an-aardvark/git-delete-squashed
alias gbdm='git checkout -q master && git remote prune origin && git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch; do mergeBase=$(git merge-base master $branch) && [[ $(git cherry master $(git commit-tree $(git rev-parse $branch^{tree}) -p $mergeBase -m _)) == "-"* ]] && git branch -D $branch; done; git prune'
alias code-lines='git ls-files | grep -v (lock) | xargs wc -l'
# other utilities
alias k='khal'
alias vd='vidir'
alias nm='nodemon'
alias nr='npm run'
alias nt='npm test'
alias ns='npm start'
alias nu='npm-upgrade'
alias plw='pdflatexwatch'
alias es='edit-script'
alias debug-zsh='time  zsh -i -c exit'
alias tra='trash'
alias scr='scratch'
alias pgp='pcregrep -M'
# python
alias pua="pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 sudo pip install -U"

bindkey '^ ' forward-word
bindkey '^o' end-of-line

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Defer initialization of nvm until nvm, node or a node-dependent command is
# run. Ensure this block is only run once if .bashrc gets sourced multiple times
# by checking whether __init_nvm is a function.
if [ -s "$HOME/.nvm/nvm.sh" ] && [ ! "$(type -f __init_nvm)" = function ]; then
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
	declare -a __node_commands=(nvm $(find -L $NVM_DIR/versions/*/*/bin -type f -exec basename {} \; | sort -u))
	function __init_nvm() {
		for i in "${__node_commands[@]}"; do unalias $i; done
		. "$NVM_DIR"/nvm.sh
		unset __node_commands
		unset -f __init_nvm
	}
	for i in "${__node_commands[@]}"; do alias $i="__init_nvm 2>/dev/null && nvm use --silent 2>/dev/null; $i"; done
fi

if [ -f "$HOME/apps/google-cloud-sdk/path.zsh.inc" ]; then source "$HOME/apps/google-cloud-sdk/path.zsh.inc"; fi
# The next line enables shell command completion for gcloud.
if [ -f "$HOME/apps/google-cloud-sdk/completion.zsh.inc" ]; then source "$HOME/apps/google-cloud-sdk/completion.zsh.inc"; fi

autoload bashcompinit
bashcompinit
source ${HOME}/.config/scripts/completions

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f $HOME/.nvm/versions/node/v10.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . $HOME/.nvm/versions/node/v10.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f $HOME/.nvm/versions/node/v10.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . $HOME/.nvm/versions/node/v10.3.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
