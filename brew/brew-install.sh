#!/bin/sh

echo "--- Homebrew ---"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "--- Add brew PATH ---"
(echo; echo 'eval "$(/usr/local/bin/brew shellenv)"') >> ~/.zprofile
eval "$(/usr/local/bin/brew shellenv)"
source ~/.zprofile


echo "--- Editor Tools ---"
brew install --cask zed
brew install --cask iterm2
brew install zsh
# Oh My Zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended


echo "--- Developer Packages ---"
brew install gh
brew install gnupg
brew install ngrok/ngrok/ngrok
brew install fnm
brew install yarn
brew install postgresql@14
brew services start postgresql@14 # Auto startup


echo "--- Developer Casks ---"
brew install --cask github
brew install --cask p4v
brew install --cask postbird
brew install --cask docker
brew install --cask postman
