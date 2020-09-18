export ZSH=$HOME/.oh-my-zsh
export PATH=~/bin:$PATH

ZSH_THEME="custom__gitster"

#DISABLE_AUTO_TITLE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias cl="clear"
alias gs="git status"
alias gp="git pull origin"
alias gc="git checkout"

# export PATH="/usr/local/opt/node@8/bin:$PATH" # (not available)
export PATH="/usr/local/opt/node@10/bin:$PATH"
# export PATH="/usr/local/opt/node@12/bin:$PATH"
# export PATH="/usr/local/opt/node/bin:$PATH" # (current v14)
