#!/bin/sh

ROOT_UID="0"
#Check if run as root
if [ "$UID" -ne "$ROOT_UID" ] ; then
	echo "You must be root to run this script!"
	exit 1
fi

#Set Sublime as default text editor
cp -r ~/Library/Preferences/com.apple.LaunchServices{,.bak}
defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add \
'{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.3;}'

ln -s '/opt/homebrew-cask/Caskroom/sublime-text3/3103/Sublime Text.app' '/Applications/Sublime Text.app'