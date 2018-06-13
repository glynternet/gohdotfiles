install:
	$(MAKE) -C bash install
	$(MAKE) -C git install
	$(MAKE) -C vim install
	$(MAKE) -C mac install

dirs:
	mkdir -p '$(HOME)/scripts'
	mkdir -p '$(HOME)/bin'
	mkdir -p '$(HOME)/tmp/scripts'
	mkdir -p '$(HOME)/tmp'

