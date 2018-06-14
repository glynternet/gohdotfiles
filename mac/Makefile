HOMEBREW_INSTALL_DIR ?= /usr/local/

install:
	$(MAKE) homebrew
	$(MAKE) alfred
	$(MAKE) iterm2

alfred:
	brew cask install alfred

homebrew:
	./install-homebrew.sh

iterm2:
	brew cask install iterm2