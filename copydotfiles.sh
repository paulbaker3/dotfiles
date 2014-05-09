#!/usr/bin/env bash

echo 'copying dot files now...'

function doIt() {
	rsync --exclude ".git/" --exclue "Caskfile/" --exclue "Brewfile/" \
    --exclude "bootstrap.sh" --exclude "README.md" --exclude "TODO.md" \ 
    --exclude "LICENSE-MIT.txt" --exclude ".DS_Store" -av --no-perms . ~
	source ~/.bash_profile
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
