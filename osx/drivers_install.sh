#!/bin/bash

# ########################################################################################
# SELENIUM DRIVER INSTALL
# ########################################################################################

shopt -s extglob

if test ! "$(which chromedriver)"; then
    echo "Installing Chromedriver..."
    CHROME_VERSION=$(/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --version)
    UPDATED_VERSION="${CHROME_VERSION//@([a-zA-Z ]|.*)/}"
    FULL_DATA=$(wget -O - https://chromedriver.storage.googleapis.com/?delimiter=/&prefix=$UPDATED_VERSION | grep -o 'strValue="\K[^"]+')
    echo $FULL_DATA > ~/tmp_install/dump.xml
    DATA=$(grep 'Prefix' ~/tmp_install/dump.xml | awk -F"$UPDATED_VERSION.0" '{print $4}' | awk -F"<" '{print $1}')
    SLUG="${DATA//@([\/])/}"
    CHROMEDRIVER=$UPDATED_VERSION.0$SLUG
    echo $CHROMEDRIVER
    wget --no-verbose -O ~/tmp_install/chromedriver_mac64.zip https://chromedriver.storage.googleapis.com/$CHROMEDRIVER/chromedriver_mac64.zip
    unzip ~/tmp_install/chromedriver_mac64.zip -d ~/tmp_install/
    mv ~/tmp_install/chromedriver /usr/local/bin
    chromedriver --version
else
    echo "Chromedriver is already available"
fi
chromedriver --version
echo