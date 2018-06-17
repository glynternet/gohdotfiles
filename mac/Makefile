install:
	$(MAKE) -C settings
	$(MAKE) homebrew
	$(MAKE) cask-install APP=alfred
	$(MAKE) cask-install APP=bettertouchtool
	$(MAKE) cask-install APP=iterm2
	$(MAKE) cask-install APP=clocker

homebrew:
	./install-homebrew.sh

cask-install:
	brew cask install $(APP)