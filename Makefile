UNAME := $(shell uname)

all:
	$(MAKE) install
	$(MAKE) dirs

install:
	$(MAKE) -C os/$(UNAME) install
	$(MAKE) -C tools
	$(MAKE) -C profiles 

DIRS ?= scripts bin tmp/scripts tmp notes
dirs:
	for dir in $(DIRS); \
		do mkdir -pv $(HOME)/$$dir; \
	done
