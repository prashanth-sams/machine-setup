#!/bin/bash

echo 'Installing android-studio...'
if ! [ -d "/Applications/Android Studio.app/" ]; then
    brew cask install android-studio
    echo "export ANDROID_HOME=/Users/$(whoami)/Library/Android/sdk" >> ~/.bash_profile
    echo "export PATH=$PATH:$JAVA_HOME/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin" >> ~/.bash_profile
    source ~/.bash_profile
fi

echo 'Installing appium...'
if ! [ -d "/Applications/Appium.app/" ]; then
    brew cask install appium
fi