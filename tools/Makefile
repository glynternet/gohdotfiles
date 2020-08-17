SHELL = sh
UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
PACKAGE_INSTALL_CMD ?= brew install
DOCKER_PACKAGE_NAME ?= docker
endif

ifeq ($(UNAME), Linux)
PACKAGE_INSTALL_CMD ?= sudo apt install --assume-yes
DOCKER_PACKAGE_NAME ?= docker.io docker-compose
endif

Darwin_PACKAGE_MANAGER_INSTALLS ?= trash
Linux_PACKAGE_MANAGER_INSTALLS ?= trash-cli xsel
PACKAGE_MANAGER_INSTALLS ?= bash-completion curl git htop jq ncdu parallel python python3-pip source-highlight tmux tree vim watch $($(UNAME)_PACKAGE_MANAGER_INSTALLS)

install: $(PACKAGE_MANAGER_INSTALLS) docker go git sublime yq

$(PACKAGE_MANAGER_INSTALLS):
	$(PACKAGE_INSTALL_CMD) $@

docker:
	$(PACKAGE_INSTALL_CMD) $(DOCKER_PACKAGE_NAME)
ifeq ($(UNAME), Linux)
	# allow running docker as current user
	# only required in Linux as the homebrew installer does this automatically, I believe
	sudo gpasswd -a $(shell whoami) docker
endif

go: go-dirs
	$(PACKAGE_INSTALL_CMD) golang

GOPATH ?= $(HOME)/go
GOBIN ?= $(GOPATH)/bin
GODIRS ?= $(GOPATH) $(GOBIN)
go-dirs:
	for dir in $(GODIRS); \
		do mkdir -pv $$dir; \
	done

sublime:
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	sudo apt-get install apt-transport-https
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	sudo apt-get update
	sudo apt-get install sublime-text

yq: pip
	pip3 install yq
