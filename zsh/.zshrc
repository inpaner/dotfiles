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
setopt extended_history
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell
setopt auto_cd # cd by typing directory name if its not a command
setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match
setopt globdots
setopt extendedglob

fpath+=$HOME/.zsh/pure
export ZSH="/home/inpaner/.oh-my-zsh"
ZSH_THEME=""
COMPLETION_WAITING_DOTS="true"

plugins=(
    gitfast 
    python 
    z 
    dirhistory
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
autoload -U promptinit; promptinit
zstyle :prompt:pure:git:stash show yes
prompt pure
PROMPT_DIRTRIM=1

for file in ~/.zshrc.d/*; do
    source "$file"
done

eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
eval "$(pyenv init -)"
eval "$(direnv hook zsh)"

[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh" --no-use
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if [ -f '/home/inpaner/google-cloud-sdk/path.zsh.inc' ]; then . '/home/inpaner/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/home/inpaner/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/inpaner/google-cloud-sdk/completion.zsh.inc'; fi

. $HOME/.asdf/asdf.sh
