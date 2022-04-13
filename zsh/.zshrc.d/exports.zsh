export CFLAGS="-O2"
export PATH=~/.pyenv/bin:$PATH

export PATH=~/.nvm/versions/node/v12.22.0/bin:$PATH
export PATH=~/adb-fastboot/platform-tools:$PATH
export NVM_DIR=~/.nvm
export FZF_DEFAULT_OPTS='--reverse --border --exact --height=50%'
export FZF_DEFAULT_COMMAND="fdfind . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fdfind -t d . $HOME"

export PATH=$PATH:/usr/local/go/bin

export PIP_REQUIRE_VIRTUALENV=false
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
export PATH=$PATH:~/.poetry/bin
