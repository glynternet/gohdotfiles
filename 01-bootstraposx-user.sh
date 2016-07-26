#!/bin/sh

defaults write com.apple.dock autohide -bool true && defaults write com.apple.dock autohide-delay -float 0 && defaults write com.apple.dock autohide-time-modifier -float 0;
defaults write com.apple.dock static-only -bool TRUE;
killall Dock

#Install Homebrew

cd ~glynhanmer
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git
git config --global user.name "Glyn Hanmer"
git config --global user.email "glynhanmer@gmail.com"
brew install python
pip install --upgrade pip
install awscli
install awscli --ignore-installed six

brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew cask install sublime-text3