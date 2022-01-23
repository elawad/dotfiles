# Manual Steps:
# > Install Fira Code font
# > mkdir ~/.aws
# > mkdir ~/.nvm

#!/usr/bin/env bash
## #!/bin/sh
## #!/bin/bash

# Save and `chmod +x ./brew-install.sh` Then `./brew-install.sh`

echo "--> Homebrew"
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# echo "Installing brew cask..."
# brew tap homebrew/cask

# Dev Tools
echo "--> Dev Tools"
brew install --cask github
brew install --cask p4v
brew insatll --cask postbird
brew install git
brew install awscli
brew install docker
brew install postgresql

# Editor Tools
echo "--> Editor Tools"
brew install --cask atom
brew install --cask iterm2
brew install zsh
echo "--> Oh My Zsh"
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Web Tools
echo "--> Web Tools"
brew install nvm
brew install yarn
brew install --cask firefox
brew install --cask google-chrome
brew install --cask ngrok
brew install --cask postman

# Work Apps
echo "--> Work Apps"
brew install --cask slack
brew install --cask webex
brew install --cask microsoft-teams
brew install --cask adobe-creative-cloud

# Other
# echo "--> Other Tools"
# brew install ...
