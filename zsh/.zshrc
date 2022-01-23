# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH=~/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="custom__gitster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

alias cl="clear"
alias gs="git status"
alias gp="git pull origin"
alias gc="git checkout"

# export PATH="/usr/local/opt/node@10/bin:$PATH"
# export PATH="/usr/local/opt/node@14/bin:$PATH"
# export PATH="/usr/local/opt/node@16/bin:$PATH"
# export PATH="/usr/local/opt/node/bin:$PATH" # (current v17)

# export PATH="/usr/local/opt/python/libexec/bin:$PATH"
