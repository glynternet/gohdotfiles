SHELL = sh
UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
PACKAGE_INSTALL_CMD ?= brew install
endif

ifeq ($(UNAME), Linux)
PACKAGE_INSTALL_CMD ?= apt install
endif

install:
	$(MAKE) bash-completion
	$(MAKE) docker

bash-completion:
	$(PACKAGE_INSTALL_CMD) bash-completion

docker:
	$(PACKAGE_INSTALL_CMD) docker

go:
	$(PACKAGE_INSTALL_CMD) golang