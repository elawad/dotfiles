#!/bin/sh

echo "--- Brew Packages ---"
sh brew/brew-install.sh


echo "--- Create Directories ---"
touch ~/.hushlogin
mkdir ~/.aws
mkdir ~/.nvm


echo "--- Copy Dotfiles ---"
cp atom/config.cson ~/.atom/config.cson
cp atom/keymap.cson ~/.atom/keymap.cson
cp atom/styles.less ~/.atom/styles.less

cp git/.gitconfig ~/.gitconfig

cp zsh/.zshrc ~/.zshrc
cp zsh/oh-my-zsh/custom/shortcuts.zsh ~/.oh-my-zsh/custom/shortcuts.zsh
cp zsh/oh-my-zsh/custom/themes/custom__gitster.zsh-theme ~/.oh-my-zsh/custom/themes/custom__gitster.zsh-theme


echo "--- Atom Packages ---"
apm install --packages-file atom/packages.list


echo "--- Git for mac ---"
xcode-select --install
