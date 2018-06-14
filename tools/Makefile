SHELL = sh
UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
PACKAGE_INSTALL_CMD ?= brew install
endif

ifeq ($(UNAME), Linux)
PACKAGE_INSTALL_CMD ?= apt install
endif

bash-completion:
	$(PACKAGE_INSTALL_CMD) bash-completion