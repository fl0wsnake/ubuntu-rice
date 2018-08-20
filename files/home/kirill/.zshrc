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

alias setclip='xclip -selection c'
alias getclip='xclip -selection c -o'
alias bins='ls -t /usr/bin | head -n 16'
alias watchtime='while true; do echo -ne "$(date +%H:%M:%S:%2N)\r"; done'
alias hist='history | cut -c 8- | tac | nvim -c "BLines!" -'

# everyday stuff
alias activities='cat /home/kirill/.config/activities.txt | paste -sd " " -'
alias ls='ls -1 --color=always'
alias s='shot'
alias f='target=$(shot); echo $target; if [ -d "$target" ]; then cd "$target"; elif [ -e "$target" ]; then rifle "$target"; fi'
alias fe='target=$(fd -Hi -t f . | fzf); echo $target; if [ -e "$target" ]; then rifle "$target"; fi; exit'
alias a='target=$(shot $(activities)); echo $target; if [ -d "$target" ]; then cd "$target"; elif [ -e "$target" ]; then rifle "$target"; fi'
alias ae='target=$(fd -Hi -t f . $(activities) | fzf); echo $target; if [ -e "$target" ]; then rifle "$target"; fi; exit'
alias t='time=%d.%m.%Y-%H:%M:%S; dir=~/trash/$(date +$time) && mkdir -p "$dir" && mv -t "$dir"'
alias e="$EDITOR"
alias x="ranger"
# git
alias g='git'
alias gs='git status'
alias gl='git l'
alias gck='git checkout'
alias gp='git pull'
alias ga='git commit --amend --no-edit'
## git pull all branches
alias gpa='git branch -r | grep -v "\->" | while read remote; do git branch --track "${remote#origin/}" "$remote"; done; git fetch --all && git pull --all'
## Delete local branches that squash-merged to `master`. Forked from https://github.com/not-an-aardvark/git-delete-squashed
alias gbd='git checkout -q master && git remote prune origin && git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch; do mergeBase=$(git merge-base master $branch) && [[ $(git cherry master $(git commit-tree $(git rev-parse $branch^{tree}) -p $mergeBase -m _)) == "-"* ]] && git branch -D $branch; done; git prune'
# other utilities
alias nrt='npm run test'


bindkey '^ ' forward-word
bindkey '^l' end-of-line

export FZF_DEFAULT_COMMAND='fd -Hi --type f'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

nvm_auto_switch

if [ -f '/home/kirill/apps/google-cloud-sdk/path.zsh.inc' ]; then source '/home/kirill/apps/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/home/kirill/apps/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/kirill/apps/google-cloud-sdk/completion.zsh.inc'; fi
