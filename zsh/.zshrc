## ZSH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="custom__gitster"
plugins=(git)
source $ZSH/oh-my-zsh.sh

## NVM
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

## Shortcuts
alias cl="clear"
alias gs="git status"
alias gp="git pull origin"
alias gc="git checkout"
