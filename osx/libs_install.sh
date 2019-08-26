#!/bin/bash

# ########################################################################################
# CLI LIBRARY LIST
# ########################################################################################

echo 'Installing Git...'
brew install git
echo
echo 'Installing mysql...'
brew install mysql
echo
echo 'Installing rvm & ruby...'
curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --ruby
echo
source /Users/$(whoami)/.rvm/scripts/rvm
echo 'export PATH="$PATH:$HOME/.rvm/bin"' >> ~/.bashrc
echo '[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"' >> ~/.bash_profile
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm""' >> ~/.bash_profile
echo
echo 'Installing Bundler...'
gem install bundler
echo
echo 'Installing fish...'
brew install fish
echo 'fish' >> ~/.bash_profile
source ~/.bash_profile
echo
echo 'Installing silver searcher...'
brew install the_silver_searcher
echo