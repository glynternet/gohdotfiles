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

dirs:
	mkdir -p '$(HOME)/scripts'
	mkdir -p '$(HOME)/bin'
	mkdir -p '$(HOME)/tmp/scripts'
	mkdir -p '$(HOME)/tmp'

