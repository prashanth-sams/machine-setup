#!/bin/bash

# ########################################################################################
# GIT CONFIGURE
# ########################################################################################
echo 'GIT settings...'
git config --global user.name $GIT_USERNAME
git config --global user.email $GIT_EMAIL
git config --global credential.helper osxkeychain
ssh-keygen -t rsa -C $GIT_EMAIL
git config --global core.preloadindex true
git config --global core.fscache true
git config --global gc.auto 256

echo