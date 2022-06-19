#!/bin/sh

echo "--- Homebrew ---"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Adds brew PATH, if `brew install` fails below.
echo "--- Add brew PATH ---"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
source ~/.zprofile


echo "--- Editor Tools ---"
brew install --cask atom
brew install --cask iterm2
brew install zsh
# Oh My Zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended


echo "--- Developer Tools ---"
brew install gh
brew install nvm
brew install yarn
brew install awscli
brew install postgresql
brew services restart postgresql # Auto startup
brew install --cask github
brew install --cask p4v
brew install --cask postbird
brew install --cask docker


echo "--- Web Tools ---"
brew install --cask firefox
brew install --cask google-chrome
brew install --cask ngrok
brew install --cask postman


echo "--- Work Tools ---"
brew install --cask jump
brew install --cask parallels
brew install --cask slack
brew install --cask webex
brew install --cask microsoft-teams
brew install --cask adobe-creative-cloud
