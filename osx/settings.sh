
#!/bin/bash

# ########################################################################################
# MAC OS SETTINGS
# ########################################################################################
echo "Changing Mac OS settings..."
defaults write com.apple.finder AppleShowAllFiles YES # show hidden files
defaults write NSGlobalDomain AppleShowAllExtensions -bool true # show all file extensions
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true #Avoid Creating .DS_Store Files On Network
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true #Avoid Creating .DS_Store Files On USB Volumes

# Automatically Open A New Finder Window When A Volume Is Mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

killall Finder 2>/dev/null
echo