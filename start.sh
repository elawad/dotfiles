#!/bin/sh

echo "--- Brew Packages ---"
sh brew/brew-install.sh


echo "--- Create Directories ---"
touch ~/.hushlogin
mkdir -p ~/.aws
mkdir -p ~/code/home
# mkdir -p ~/.config/zed ( needed? )


echo "--- Copy Dotfiles ---"
cp aws/.okta_aws_login_config ~/.okta_aws_login_config
cp aws/config ~/.aws/config
cp aws/credentials ~/.aws/credentials

cp git/ssh.config ~/.ssh/config
cp git/.gitconfig ~/.gitconfig
cp git/home.gitconfig ~/code/home/.gitconfig

cp iterm2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

cp zed/.editorconfig ~/code/.editorconfig
cp zed/biome.json ~/code/biome.json
cp zed/settings.json ~/.config/zed/settings.json
cp zed/snippets.json ~/.config/zed/snippets/snippets.json

cp zsh/.zshrc ~/.zshrc
cp zsh/shortcuts.zsh ~/.oh-my-zsh/custom/shortcuts.zsh
cp zsh/custom-gitster.zsh-theme ~/.oh-my-zsh/custom/themes/custom-gitster.zsh-theme


echo "--- GitHub SSH Key ---"
ssh-keygen -t ed25519 -C "elawad@users.noreply.github.com"
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
pbcopy < ~/.ssh/id_ed25519.pub
echo "--- Copied to clipboard. Add Signing Key to GitHub site ---"
