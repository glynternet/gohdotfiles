all:
	$(MAKE) install
	$(MAKE) dirs

install:
	$(MAKE) -C mac install
	$(MAKE) -C tools
	$(MAKE) -C bash install
	$(MAKE) -C git install
	$(MAKE) -C vim install
	$(MAKE) -C sublime install

DIRS ?= scripts bin tmp/scripts tmp notes
dirs:
	for dir in $(DIRS); \
		do mkdir -pv $(HOME)/$$dir; \
	done
