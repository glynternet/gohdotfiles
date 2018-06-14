HOMEBREW_INSTALL_DIR ?= /usr/local/

install:
	$(MAKE) homebrew
	$(MAKE) alfred
	$(MAKE) iterm2
	$(MAKE) bettertouchtool

bootstrap-settings:
	defaults write com.apple.dock autohide -bool true
	defaults write com.apple.dock autohide-delay -float 0
	defaults write com.apple.dock autohide-time-modifier -float 0
	defaults write com.apple.dock static-only -bool TRUE
	defaults write com.apple.dock tilesize -int 3
	killall Dock

alfred:
	brew cask install alfred

bettertouchtool:
	brew cask install bettertouchtool

homebrew:
	./install-homebrew.sh

iterm2:
	brew cask install iterm2