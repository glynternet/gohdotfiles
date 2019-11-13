SHELL ?= sh
UNAME ?= $(shell uname)

ifeq ($(UNAME),Darwin)
CONFIG_DIR ?= $(HOME)/Library/Application Support/Sublime Text 3/Packages/User
KEYBINDINGS_FILENAME ?= Default (OSX).sublime-keymap
endif

ifeq ($(UNAME),Linux)
CONFIG_DIR ?= $(HOME)/.config/sublime-text-3/Packages/User
KEYBINDINGS_FILENAME ?= Default ($(UNAME)).sublime-keymap
endif

GOH_SUBLIMEPROFILE_DIR ?= $(CURDIR)

PREFERENCES_FILENAME ?= Preferences.sublime-settings

link:
	make link-filename FILENAME="$(PREFERENCES_FILENAME)"
	make link-filename FILENAME="$(KEYBINDINGS_FILENAME)"

link-filename:
	ln -f -s "$(GOH_SUBLIMEPROFILE_DIR)/$(FILENAME)" "$(CONFIG_DIR)/$(FILENAME)"