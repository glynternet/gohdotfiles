CONFIG_DIR ?= $(HOME)/.config/sublime-text-3/Packages/User
GOH_SUBLIMEPROFILE_DIR ?= $(CURDIR)

PREFERENCES_FILENAME ?= Preferences.sublime-settings
KEYBINDINGS_FILENAME ?= Default (Linux).sublime-keymap

link:
	make link-filename FILENAME="$(PREFERENCES_FILENAME)"
	make link-filename FILENAME="$(KEYBINDINGS_FILENAME)"

link-filename:
	ln -f -s "$(GOH_SUBLIMEPROFILE_DIR)/$(FILENAME)" "$(CONFIG_DIR)/$(FILENAME)"