#!/usr/bin/env zsh

BREW_PREFIX=$(brew --prefix)

cd "$(dirname "${BASH_SOURCE}")";

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade
brew bundle --file .brewfile

nvm install --lts

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rsync --exclude ".git/" \
	--exclude ".DS_Store" \
	--exclude ".osx" \
	--exclude "run.sh" \
	-avh --no-perms . ~

source ~/.zprofile
source ~/.zshrc

upgrade_oh_my_zsh
