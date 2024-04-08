## ZSH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="custom__gitster"
plugins=(git)
source $ZSH/oh-my-zsh.sh

## GitHub Commit Signature
ssh-add --apple-use-keychain ~/.ssh/id_ed25519 -q

## NVM
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

## Shortcuts
alias cl="clear"
alias gp="git pull"
alias gs="git switch"
alias gt="git status"

alias ys="yarn start"
