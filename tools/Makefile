SHELL = sh
UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
PACKAGE_INSTALL_CMD ?= brew install
DOCKER_PACKAGE_NAME ?= docker
endif

ifeq ($(UNAME), Linux)
PACKAGE_INSTALL_CMD ?= apt install --assume-yes
DOCKER_PACKAGE_NAME ?= docker.io docker-compose
endif

install:
	# install bash-completion first so succeeding tools have
	# their respective bash-completion scripts installed, too
	$(MAKE) commands
	# install commands specific to the OS
	$(MAKE) $(UNAME)-commands
	$(MAKE) bash-completion
	$(MAKE) sublime
	$(MAKE) git
	$(MAKE) docker
	$(MAKE) go
	# $(MAKE) aws

bash-completion:
	$(PACKAGE_INSTALL_CMD) bash-completion

docker:
	$(PACKAGE_INSTALL_CMD) $(DOCKER_PACKAGE_NAME)
ifeq ($(UNAME), Linux)
	# allow running docker as current user
	# only required in Linux as the homebrew installer does this automatically, I believe
	sudo gpasswd -a $(shell whoami) docker
	newgrp docker
endif

git:
	# install git again with package installer
	# this will install any bash-completion scripts.
	# On macOS it will install git again in homebrew location,
	# which will help to always have a recent version.
	$(PACKAGE_INSTALL_CMD) git

GOPATH ?= $(HOME)/go
GOBIN ?= $(GOPATH)/bin
GOBB ?= $(GOPATH)/src/bitbucket.org/glynny
GOG ?= $(GOPATH)/src/github.com/glynternet
GODIRS ?= $(GOPATH) $(GOBIN) $(GOBB) $(GOG)
go:
	$(PACKAGE_INSTALL_CMD) golang
	$(MAKE) go-dirs
	
go-dirs:
	for dir in $(GODIRS); \
		do mkdir -pv $$dir; \
	done

commands:
	$(PACKAGE_INSTALL_CMD) watch
	$(PACKAGE_INSTALL_CMD) jq
	$(PACKAGE_INSTALL_CMD) tree
	$(PACKAGE_INSTALL_CMD) ncdu
	$(PACKAGE_INSTALL_CMD) tmux
	$(PACKAGE_INSTALL_CMD) htop
	$(PACKAGE_INSTALL_CMD) parallel

aws:
	$(PACKAGE_INSTALL_CMD) python
	curl -O https://bootstrap.pypa.io/get-pip.py
	python3 get-pip.py --user
	rm get-pip.py
	pip3 install awscli --upgrade --user
	ln -s $(HOME)/Library/Python/3.6/bin/aws /usr/local/bin/aws

sublime:
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	sudo apt-get install apt-transport-https
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	sudo apt-get update
	sudo apt-get install sublime-text

Darwin-commands:
	$(PACKAGE_INSTALL_CMD) trash

Linux-commands:
	$(PACKAGE_INSTALL_CMD) trash-cli
	$(PACKAGE_INSTALL_CMD) xsel
	# $(PACKAGE_INSTALL_CMD) nautilus-dropbox
