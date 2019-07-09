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

if test ! "$(which geckodriver)"; then
    echo "Installing Geckodriver..."
    FIREFOX_VERSION=$(/Applications/Firefox.app/Contents/MacOS/firefox --version)
    UPDATED_VERSION="${FIREFOX_VERSION//@([a-zA-Z ]|.*)/}"

    LOCATION=$(curl -sL https://github.com/mozilla/geckodriver/releases/latest | grep "releases/download.*macos" | cut -d \" -f 2 | tr -d \" | sed -e 's#.*download/v\(.*\)/geckogriver.*#\1#g')
    wget --no-verbose -P ~/tmp_install/ https://github.com/$LOCATION
    tar -zxvf ~/tmp_install/geckodriver-v0.24.0-macos.tar.gz -C ~/tmp_install/
    mv ~/tmp_install/geckodriver /usr/local/bin
    geckodriver --version
fi
