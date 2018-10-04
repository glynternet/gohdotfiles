install:
	$(MAKE) -C settings
	$(MAKE) install-package PACKAGE=guake
	$(MAKE) install-package PACKAGE=exfat-utils

install-package:
	apt install $(PACKAGE)
