#!/bin/sh

ROOT_UID="0"
#Check if run as root
if [ "$UID" -ne "$ROOT_UID" ] ; then
	echo "You must be root to run this script!"
	exit 1
fi

defaults write com.apple.dock autohide -bool true && defaults write com.apple.dock autohide-delay -float 0 && defaults write com.apple.dock autohide-time-modifier -float 0;
defaults write com.apple.dock static-only -bool TRUE;
killall Dock

#Install Homebrew

cd ~
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git
git config --global user.name "Glyn Hanmer"
git config --global user.email "glynhanmer@gmail.com"
brew install python
pip install --upgrade pip
sudo pip install awscli
sudo pip install awscli --ignore-installed six

#Set Sublime as default text editor
cp -r ~/Library/Preferences/com.apple.LaunchServices{,.bak}
defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add \
'{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.3;}'
