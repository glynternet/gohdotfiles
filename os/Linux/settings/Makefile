settings: screenshots dock

screenshots: SCREENSHOTS_DIR ?= $(HOME)/Pictures/screenshots
screenshots:
	mkdir -p $(SCREENSHOTS_DIR)
	gsettings set org.gnome.gnome-screenshot auto-save-directory 'file://$(SCREENSHOTS_DIR)'

dock:
	gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
	gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
	gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 12