## ZSH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="custom-gitster"
plugins=(git)
source $ZSH/oh-my-zsh.sh

## GitHub Commit Signature
ssh-add --apple-use-keychain ~/.ssh/id_ed25519 -q

## FNM
eval "$(fnm env --use-on-cd --shell zsh)"

## Shortcuts
alias cl="clear"
alias gp="git pull"
alias gs="git switch"
alias gt="git status"

alias ys="yarn start"

alias ui="cd ~/code/brand-center-ui"
alias api="cd ~/code/brand-center-api"
