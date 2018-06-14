#!/bin/sh

#Set Sublime as default text editor
cp -r ~/Library/Preferences/com.apple.LaunchServices{,.bak}
defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add \
'{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.3;}'
