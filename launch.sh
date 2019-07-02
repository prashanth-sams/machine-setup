#!/bin/bash

GIT_USERNAME="YOUR_GIT_NAME"
GIT_EMAIL="YOUR_GIT_EMAIL"

bash ./osx/before.sh
bash ./osx/settings.sh
bash ./osx/homebrew.sh
bash ./osx/xcode.sh
bash ./osx/brew_prepare.sh
bash ./osx/libs_install.sh
bash ./osx/apps_install.sh
bash ./osx/quicklook_plugins.sh
bash ./osx/git_config.sh
bash ./osx/after.sh