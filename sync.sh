#!/usr/bin/env zsh

cd "$(dirname "${BASH_SOURCE}")";

rsync --exclude ".git/" \
	--exclude ".DS_Store" \
	--exclude ".osx" \
	--exclude "run.sh" \
	-avh --no-perms . ~

source ~/.zprofile
source ~/.zshrc

upgrade_oh_my_zsh
