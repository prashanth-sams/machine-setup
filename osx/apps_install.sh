#!/bin/bash

# ########################################################################################
# CLI APPS LIST
# ########################################################################################

echo 'Installing Java...'
if ! [ -x "$(command -v java)" ]; then
  brew cask install java
fi

echo 'Installing docker...'
if ! [ -x "$(command -v docker)" ]; then
  brew cask install docker
fi

echo 'Installing virtualbox...'
if ! [ -x "$(command -v virtualbox)" ]; then
  brew cask install virtualbox
fi

echo 'Installing chrome...'
if ! [ "$(/Applications/Google\ Chrome.app/Contents/MacOS/Goodgle\ Chrome --version)" ]; then
  brew cask install google-chrome
fi

echo 'Installing firefox...'
if ! [ "$(/Applications/Firefox.app/Contents/MacOS/firefox --version)" ]; then
  brew cask install firefox
fi

echo 'Installing skitch...'
if ! [ -d "/Applications/Skitch.app/" ]; then
  brew cask install skitch
fi

echo 'Installing zeplin...'
if ! [ -d "/Applications/Zeplin.app/" ]; then
  brew cask install zeplin
fi

echo 'Installing postman...'
if ! [ -d "/Applications/Postman.app/" ]; then
  brew cask install postman
fi

echo 'Installing docker-toolbox...'
if ! [ -x "$(command -v docker-machine)" ]; then
  brew cask install docker-toolbox
fi