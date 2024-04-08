#!/bin/sh

echo "--- Brew Packages ---"
sh brew/brew-install.sh


echo "--- Create Directories ---"
touch ~/.hushlogin
mkdir -p ~/.atom
mkdir -p ~/.nvm
mkdir -p ~/code
mkdir -p ~/code/home


echo "--- Copy Dotfiles ---"
cp atom/.prettierrc ~/code/.prettierrc
cp atom/config.cson ~/.atom/config.cson
cp atom/keymap.cson ~/.atom/keymap.cson
cp atom/styles.less ~/.atom/styles.less

cp git/ssh.config ~/.ssh/config
cp git/.gitconfig ~/.gitconfig
cp git/home.gitconfig ~/code/home/.gitconfig

cp zsh/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
cp zsh/.zshrc ~/.zshrc
cp zsh/oh-my-zsh/custom/shortcuts.zsh ~/.oh-my-zsh/custom/shortcuts.zsh
cp zsh/oh-my-zsh/custom/themes/custom__gitster.zsh-theme ~/.oh-my-zsh/custom/themes/custom__gitster.zsh-theme


echo "--- GitHub SSH Key ---"
ssh-keygen -t ed25519 -C "elawad@users.noreply.github.com"
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
pbcopy < ~/.ssh/id_ed25519.pub
echo "--- Copied to clipboard. Add Signing Key to GitHub site ---"


# // TODO - Errors: apm offline
# echo "--- Atom Packages ---"
# apm install --packages-file atom/packages.list

# echo "--- Node ---"
# source $NVM_DIR/nvm.sh
# nvm install --lts
