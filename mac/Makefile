HOMEBREW_INSTALL_DIR ?= /usr/local/

install:
	$(MAKE) homebrew
	$(MAKE) alfred
	$(MAKE) iterm2
	$(MAKE) bettertouchtool

alfred:
	brew cask install alfred

bettertouchtool:
	brew cask install bettertouchtool

homebrew:
	./install-homebrew.sh

iterm2:
	brew cask install iterm2