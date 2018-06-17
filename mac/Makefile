install:
	$(MAKE) homebrew
	$(MAKE) cask-install APP=alfred
	$(MAKE) cask-install APP=bettertouchtool
	$(MAKE) cask-install APP=iterm2
	$(MAKE) cask-install APP=clocker

bootstrap-settings:
	defaults write com.apple.dock autohide -bool true
	defaults write com.apple.dock autohide-delay -float 0
	defaults write com.apple.dock autohide-time-modifier -float 0
	defaults write com.apple.dock static-only -bool TRUE
	defaults write com.apple.dock tilesize -int 3
	killall Dock

homebrew:
	./install-homebrew.sh

cask-install:
	brew cask install $(APP)