settings:
	$(MAKE) screenshots

screenshots: SCREENSHOTS_DIR ?= $(HOME)/Pictures/screenshots
screenshots:
	mkdir -p $(SCREENSHOTS_DIR)
	gsettings set org.gnome.gnome-screenshot auto-save-directory 'file://$(SCREENSHOTS_DIR)'