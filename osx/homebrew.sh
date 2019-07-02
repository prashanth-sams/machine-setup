#!/bin/bash

###
### Install Homebrew
###
echo "Installing Homebrew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew --version
echo
echo