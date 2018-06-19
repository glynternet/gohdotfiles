SHELL = sh
UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
PACKAGE_INSTALL_CMD ?= brew install
endif

ifeq ($(UNAME), Linux)
PACKAGE_INSTALL_CMD ?= apt install
endif

install:
	# install bash-completion first so succeeding tools have
	# their respective bash-completion scripts installed, too
	$(MAKE) bash-completion
	$(MAKE) git
	$(MAKE) docker
	$(MAKE) go
	$(MAKE) aws
	$(MAKE) commands
	$(MAKE) $(UNAME)-commands

bash-completion:
	$(PACKAGE_INSTALL_CMD) bash-completion

docker:
	$(PACKAGE_INSTALL_CMD) docker

GOPATH ?= $(HOME)/go
GOBIN ?= $(GOPATH)/bin
GOBB ?= $(GOPATH)/src/bitbucket.org/glynny
GOG ?= $(GOPATH)/src/github.com/glynternet
GODIRS ?= $(GOPATH) $(GOBB) $(GOG) $(GOBIN)

# install git again in homebrew location
# this will help to always have a recent version
git:
	$(PACKAGE_INSTALL_CMD) git

go:
	$(PACKAGE_INSTALL_CMD) golang
	$(MAKE) go-dirs
	
go-dirs:
	for dir in $(GODIRS); \
		do mkdir -pv $(HOME)/$$dir; \
	done

commands:
	$(PACKAGE_INSTALL_CMD) watch
	$(PACKAGE_INSTALL_CMD) jq
	$(PACKAGE_INSTALL_CMD) tree
	$(PACKAGE_INSTALL_CMD) ncdu

aws:
	$(PACKAGE_INSTALL_CMD) python
	curl -O https://bootstrap.pypa.io/get-pip.py
	python3 get-pip.py --user
	rm get-pip.py
	pip3 install awscli --upgrade --user
	ln -s $(HOME)/Library/Python/3.6/bin/aws /usr/local/bin/aws

Darwin-commands:
	$(PACKAGE_INSTALL_CMD) trash