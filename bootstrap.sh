#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"
git pull origin master

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew doctor

# Install Native Applications
brew bundle ./Caskfile

# Install Brewfile packages
brew bundle ./Brewfile

# Copy the dotfiles from this repo to your local Home directory. 
# This will copy of existing files.
./copydotfiles.sh

# Run the osx defaults
./.osx

# Install RVM with Rails. Let's not install all the ri docs for every rails gem dependency
echo "gem: --no-document" >> ~/.gemrc
\curl -sSL https://get.rvm.io | bash -s stable --rails
source ~/.rvm/scripts/rvm

# Run RVM in shell as a function
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile

# Check the RVM installation
rvm -v 
ruby -v 
rails -v

# Check that we can still brew
brew doctor