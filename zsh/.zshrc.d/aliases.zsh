alias c="cd"
alias s="cd .."
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
alias gbb='fbr'
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
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gcpm='git cherry-pick -m 1'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout main'
alias gd='git diff'
alias gda='git diff HEAD'
alias glg='git log --graph --oneline --decorate --all'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cd) %C(bold blue)<%an>%Creset' --abbrev-commit --date=human"
alias glp="git log -p --ext-diff"
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
alias gpush='git push'
alias gr='git restore'
alias grs='git restore --staged'
alias grb='git rebase'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'
alias gpa='bash ~/repos/personal-scripts/git-pull-all.sh'
alias gu='gitui'
alias gsh='git show --ext-diff'

alias clear-trash='rm -rf ~/.local/share/Trash/*'

alias sm='sudo service mongod start'

alias nt='cd ~/repos/nlp-thesis'

alias wf='ncwifi'
alias b='bat'
alias l='exa --long --group-directories-first --classify --all --git '
alias ll='exa --long --group-directories-first --classify --all --git --color always | less -r'
alias lg='exa --long --group-directories-first --classify --all --git --grid'
alias lq='exa --tree --group-directories-first --git --level=1'
alias lqa='exa --tree --group-directories-first --git --level=1 --all'
alias lw='exa --tree --group-directories-first --git --level=2'
alias lwa='exa --tree --group-directories-first --git --level=2 --all'
alias le='exa --tree --group-directories-first --git --level=3'
alias lea='exa --tree --group-directories-first --git --level=3 --all'
alias p='python'
alias pv='pyenv version'
alias v='nvim'
alias vim='nvim'
alias poetry-shell='. "$(dirname $(poetry run which python))/activate"'
alias .venv='source .venv/bin/activate'
alias venv='source venv/bin/activate'
alias upd='sudo apt update'
alias upg='sudo apt upgrade'
alias auto='sudo apt autoremove'
alias fd=fdfind
alias t=tig
alias bt='btm --color gruvbox --group --mem_as_value'
alias rm=trash
alias dl='cd ~/Downloads'
