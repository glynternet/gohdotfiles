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
	$(MAKE) go
	$(MAKE) commands

bash-completion:
	$(PACKAGE_INSTALL_CMD) bash-completion

docker:
	$(PACKAGE_INSTALL_CMD) docker

GOPATH ?= $(HOME)/go
GOBB ?= $(GOPATH)/src/bitbucket.org/glynny
GOG ?= $(GOPATH)/src/github.com/glynternet
GOBIN ?= $(GOPATH)/bin
GODIRS ?= $(GOPATH) $(GOBB) $(GOG) $(GOBIN)

go:
	$(PACKAGE_INSTALL_CMD) golang
	$(MAKE) go-dirs
	
go-dirs:
	for dir in $(GODIRS); \
		do mkdir -pv $(HOME)/$$dir; \
	done

commands:
	$(PACKAGE_INSTALL_CMD) watch