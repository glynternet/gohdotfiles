SHELL ?= sh
UNAME ?= $(shell uname)

ifeq ($(UNAME),Darwin)
CONFIG_DIR ?= $(HOME)/Library/Application Support/Sublime Text/Packages/User
KEYBINDINGS_FILENAME ?= Default (OSX).sublime-keymap
endif

ifeq ($(UNAME),Linux)
CONFIG_DIR ?= $(HOME)/.config/sublime-text/Packages/User
KEYBINDINGS_FILENAME ?= Default ($(UNAME)).sublime-keymap
endif

GOH_SUBLIMEPROFILE_DIR ?= $(CURDIR)

PREFERENCES_FILENAME ?= Preferences.sublime-settings

install: link

configdir:
	# ensure config dir exists.
	# if run on a fresh setup, the config dir doesn't exist before sublime has been opened and the install fails because of it.
	mkdir -p "$(CONFIG_DIR)"

link:
	make link-filename FILENAME="$(PREFERENCES_FILENAME)"
	make link-filename FILENAME="$(KEYBINDINGS_FILENAME)"

link-filename: configdir
	ln -f -s "$(GOH_SUBLIMEPROFILE_DIR)/$(FILENAME)" "$(CONFIG_DIR)/$(FILENAME)"
