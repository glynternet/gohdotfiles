settings:
	$(MAKE) dock
	$(MAKE) finder
	$(MAKE) desktopservices
	$(MAKE) screencapture
	$(MAKE) silence-bootchime
	$(MAKE) tap-to-click

dock:
	defaults write com.apple.dock autohide -bool true
	defaults write com.apple.dock autohide-delay -float 0
	defaults write com.apple.dock autohide-time-modifier -float 0
	defaults write com.apple.Dock showhidden -bool yes
	defaults write com.apple.dock static-only -bool true
	defaults write com.apple.dock tilesize -int 3
	defaults write com.apple.dock single-app -bool true
	killall Dock

finder:
	# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
	defaults write com.apple.finder QuitMenuItem -bool true
	defaults write com.apple.finder ShowStatusBar -bool true
	killall Finder

desktopservices:
	# Avoid creating .DS_Store files on network or USB volumes
	defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
	defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

screencapture: SCREENSHOTS_DIR ?= $(HOME)/screenshots
screencapture:
	mkdir -p $(SCREENSHOTS_DIR)
	defaults write com.apple.screencapture location $(SCREENSHOTS_DIR)
	defaults write com.apple.screencapture disable-shadow -bool true

silence-bootchime:
	sudo nvram SystemAudioVolume=" "

tap-to-click:
	defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
	defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
	defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
