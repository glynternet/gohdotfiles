settings: screenshots dock menubar

dock:
	gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
	gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
	gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 12

menubar:
	gsettings set org.gnome.desktop.interface clock-show-date true
	gsettings set org.gnome.desktop.interface show-battery-percentage true
	gsettings set org.gnome.desktop.interface clock-show-weekday false

screenshots: SCREENSHOTS_DIR ?= $(HOME)/Pictures/screenshots
screenshots:
	mkdir -p $(SCREENSHOTS_DIR)
	gsettings set org.gnome.gnome-screenshot auto-save-directory 'file://$(SCREENSHOTS_DIR)'
