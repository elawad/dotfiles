#!/bin/sh

echo "--- Homebrew ---"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "--- Add brew PATH ---"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
source ~/.zprofile


echo "--- Editor Tools ---"
brew install --cask zed
brew install --cask iterm2
brew install zsh
# Oh My Zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended


echo "--- Developer Packages ---"
brew install gh
brew install ngrok
brew install fnm
brew install yarn
brew install gimme-aws-creds
brew install postgresql@14
brew services start postgresql@14 # Auto startup


echo "--- Developer Casks ---"
brew install --cask github
brew install --cask p4v
brew install --cask postbird
brew install --cask docker
brew install --cask postman
brew install --cask font-fira-code
