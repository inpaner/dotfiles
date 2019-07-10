# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/inpaner/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
# End of lines configured by zsh-newuser-install


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/inpaner/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="bira-fix"
ZSH_THEME="seeker"


# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
 plugins=(
    gitfast python z vi-mode
    kubectl virtualenv-prompt
    dirhistory
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
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias clr="clear" # Clear your terminal screen
alias ip="curl icanhazip.com" # Your public IP address
alias ldir="ls -al | grep ^d" # List all directories in current directory in long list format

# ----------------------
# Git Aliases
# ----------------------
alias g='git'
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add --all'
alias gau='git add --update'
alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch --delete '
alias gbD='git branch -D'
alias gc='git commit -v'
alias gcm='git commit --message'
alias gcf='git commit --fixup'
alias gf='git fetch'
alias gfp='git fetch --prune'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcos='git checkout staging'
alias gcod='git checkout develop'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias glg='git log --graph --oneline --decorate --all'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cd) %C(bold blue)<%an>%Creset' --abbrev-commit --date=human"
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff --stat -v'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gr='git rebase'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'

alias gpa='bash ~/repos/personal-scripts/git-pull-all.sh'

# ----------------------
# Git Functions
# ----------------------
# Git log find by commit message
function glf() { git log --all --grep="$1"; }

PROMPT_DIRTRIM=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/home/inpaner/.pyenv/bin:$PATH"
export PATH=$PATH:/home/inpaner/bin/slack-theme
export PATH=$PATH:/home/inpaner/.poetry/bin
export SLACK_THEME_SHELL_PROFILE="~/.zshrc"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

alias clear-trash='rm -rf ~/.local/share/Trash/*'

alias gpu='ssh -i ~/.ssh/id_rsa-aipros ivan1p@ifg.gpu.ai-pros.com'
alias gpuj='ssh -i ~/.ssh/id_rsa-aipros -L 8888:localhost:8123 ivan1p@ifg.gpu.ai-pros.com'
alias codecamp='ssh -i ~/.ssh/id_rsa-aipros ivan1p@codecamp.ai-pros.com'
alias sm='sudo service mongod start'

alias nof='cd ~/aipros/nlp-offline'
alias non='cd ~/aipros/nlp-online'
alias na='cd ~/aipros/nlp-api'
alias nc='cd ~/aipros/nlp-cassandra'
alias np='cd ~/aipros/nlp-prep'

alias use-dev='gcloud config set project caramel-limiter-145016; kubectl config use-context gke_caramel-limiter-145016_us-west1-b_ai-rep; kubectl config set-context --current --namespace=airep-dev'
alias use-cm='gcloud config set project caramel-limiter-145016; kubectl config use-context gke_caramel-limiter-145016_us-west1-b_ai-rep; kubectl config set-context --current --namespace=campaign-manager-dev'
alias use-staging='gcloud config set project airep-staging;kubectl config use-context gke_airep-staging_us-west1_airep-staging'
alias use-prod='gcloud config set project aip-qmg-travel;kubectl config use-context gke_aip-qmg-travel_us-west1_airep-qmg-travel'
alias use-test='gcloud config set project aip-team9-test;kubectl config use-context gke_aip-team9-test_us-west1_team9-k8s'

alias wf='ncwifi'
alias p='python'
alias pv='pyenv version'
alias v='vim'
alias ma='mongo ai-pros-vp1'
alias poetry-shell='. "$(dirname $(poetry run which python))/activate"'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias autoremove='sudo apt autoremove'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/inpaner/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/inpaner/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/inpaner/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/inpaner/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
