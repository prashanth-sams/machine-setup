#!/bin/bash

GIT_USERNAME="YOUR_GIT_NAME"
GIT_EMAIL="YOUR_GIT_EMAIL"

LOCATION=$(pwd)/osx

source $LOCATION/before.sh
source $LOCATION/settings.sh
source $LOCATION/homebrew.sh
source $LOCATION/xcode.sh
source $LOCATION/brew_prepare.sh
source $LOCATION/libs_install.sh
source $LOCATION/apps_install.sh
source $LOCATION/quicklook_plugins.sh
source $LOCATION/git_config.sh
source $LOCATION/after.sh