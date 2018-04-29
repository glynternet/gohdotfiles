install:
	$(MAKE) install-bash
	$(MAKE) install-git
	$(MAKE) install-vim

install-bash:
	$(MAKE) -C bash install

install-git:
	$(MAKE) -C git install

install-vim:
	$(MAKE) -C vim install

dirs:
	mkdir -p '$(HOME)/scripts'
	mkdir -p '$(HOME)/bin'
	mkdir -p '$(HOME)/tmp/scripts'
	mkdir -p '$(HOME)/tmp'
