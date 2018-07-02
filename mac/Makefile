install:
	$(MAKE) -C settings
	$(MAKE) homebrew
	$(MAKE) cask-install APP=alfred
	$(MAKE) cask-install APP=bettertouchtool
	$(MAKE) cask-install APP=clocker
	$(MAKE) cask-install APP=goland
	$(MAKE) cask-install APP=iterm2

homebrew:
	./install-homebrew.sh

cask-install:
	brew cask install $(APP)

java8:
	brew tap caskroom/versions
	$(MAKE) cask-install APP=java8