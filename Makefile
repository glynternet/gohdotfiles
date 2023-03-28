all:
	$(MAKE) install
	$(MAKE) dirs

install:
	$(MAKE) -C os
	$(MAKE) -C tools
	$(MAKE) -C profiles 

DIRS ?= scripts bin tmp notes
dirs:
	for dir in $(DIRS); \
		do mkdir -pv $(HOME)/$$dir; \
	done
