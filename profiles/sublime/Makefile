CONFIG_DIR ?= $(HOME)/.config/sublime-text-3/Packages/User
PROFILE_DIR ?= $(HOME)

GOH_DOTFILES ?= $(HOME)/gohdotfiles
GOH_SUBLIMEPROFILE_DIR ?= $(GOH_DOTFILES)/profiles/sublime

PREFERENCES_FILENAME ?= Preferences.sublime-settings
KEYBINDINGS_FILENAME ?= Default (Linux).sublime-keymap

link:
	make link-filename FILENAME="$(PREFERENCES_FILENAME)"
	make link-filename FILENAME="$(KEYBINDINGS_FILENAME)"

link-filename:
	ln -f -s "$(GOH_SUBLIMEPROFILE_DIR)/$(FILENAME)" "$(CONFIG_DIR)/$(FILENAME)"