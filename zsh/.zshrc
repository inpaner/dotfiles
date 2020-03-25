# The following lines were added by compinstall

# zstyle ':completion:*' completer _complete _ignored
# zstyle :compinstall filename '/home/inpaner/.zshrc'

autoload -Uz compinit
zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate
zmodload -i zsh/complist
compinit
_comp_options+=(globdots)

kitty + complete setup zsh | source /dev/stdin
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell
setopt auto_cd # cd by typing directory name if its not a command
# setopt correct_all # autocorrect commands
setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match
setopt globdots
setopt extendedglob

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

ranger-cd() {
    tmp="$(mktemp)"
    ranger --choosedir="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

bindkey -s '^o' 'ranger-cd\n'

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
    vi-mode
    gitfast python z 
    kubectl virtualenv-prompt
    dirhistory
    zsh-syntax-highlighting
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
alias gc!='git commit -v --amend'
alias gcm='git commit --message'
alias gcf='git commit --fixup'
alias gf='git fetch'
alias gfp='git fetch --prune'
alias gcp='git cherry-pick'
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
alias glp="git log -p"
alias glfp="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cd) %C(bold blue)<%an>%Creset' --abbrev-commit --date=human --first-parent"
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff -v'
alias gmm='git merge --no-ff --no-commit -v'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gp='git pull'
alias gpr='git pull --rebase=preserve'
alias gps='git push --set-upstream origin $(git_current_branch)'
alias gpd='git push origin -d'
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
function nuke() {git branch -D "$1"; git push origin -d "$1"; git checkout -b "$1"}


PROMPT_DIRTRIM=1

export CFLAGS="-O2"
export PATH='$PATH:~/.poetry/bin'
export PATH='~/.pyenv/bin:$PATH'
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
alias nv='cd ~/aipros/nlp-validator'
alias bo='cd ~/aipros/bucketer-online'

alias use-dev='gcloud config set project caramel-limiter-145016; kubectl config use-context gke_caramel-limiter-145016_us-west1-b_ai-rep; kubectl config set-context --current --namespace=airep-dev'
alias use-stg='gcloud config set project caramel-limiter-145016; kubectl config use-context gke_caramel-limiter-145016_us-west1-b_ai-rep; kubectl config set-context --current --namespace=airep-staging'
alias use-cmd='gcloud config set project caramel-limiter-145016; kubectl config use-context gke_caramel-limiter-145016_us-west1-b_ai-rep; kubectl config set-context --current --namespace=campaign-manager-dev'
alias use-cms='gcloud config set project caramel-limiter-145016; kubectl config use-context gke_caramel-limiter-145016_us-west1-b_ai-rep; kubectl config set-context --current --namespace=campaign-manager-staging'

alias wf='ncwifi'
alias b='bat'
alias ls='exa'
alias l='exa --long --git --all'
alias p='python'
alias pv='pyenv version'
alias v='vim'
alias ma='mongo ai-pros-vp1'
alias poetry-shell='. "$(dirname $(poetry run which python))/activate"'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias autoremove='sudo apt autoremove'

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND="fd . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"
# if [ /usr/bin/kubectl ]; then source <(kubectl completion zsh); fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/inpaner/google-cloud-sdk/path.zsh.inc' ]; then . '/home/inpaner/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/inpaner/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/inpaner/google-cloud-sdk/completion.zsh.inc'; fi
