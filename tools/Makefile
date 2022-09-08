SHELL = sh
UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
PACKAGE_INSTALL_CMD ?= brew install
DOCKER_PACKAGE_NAME ?= docker

sublime:
	$(PACKAGE_INSTALL_CMD) sublime-text

endif

ifeq ($(UNAME), Linux)
PACKAGE_INSTALL_CMD ?= sudo apt install --assume-yes
DOCKER_PACKAGE_NAME ?= docker.io docker-compose

# define only for linux a special way to install sublime, the Darwin way can be installed through brew
sublime:
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	sudo apt-get install apt-transport-https
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	sudo apt-get update
	sudo apt-get install sublime-text

endif

Darwin_PACKAGE_MANAGER_INSTALLS ?= trash
Linux_PACKAGE_MANAGER_INSTALLS ?= trash-cli xsel
PACKAGE_MANAGER_INSTALLS ?= bash-completion curl htop jq ncdu parallel python source-highlight tmux tree vim watch $($(UNAME)_PACKAGE_MANAGER_INSTALLS)

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

git:
	# install git again with package installer
	# this will install any bash-completion scripts.
	# On macOS it will install git again in homebrew location,
	# which will help to always have a recent version.
ifeq ($(UNAME), Linux)
	add-apt-repository ppa:git-core/ppa
	apt update
endif
	$(PACKAGE_INSTALL_CMD) git

go: go-dirs
	$(PACKAGE_INSTALL_CMD) golang

GOPATH ?= $(HOME)/go
GOBIN ?= $(GOPATH)/bin
GODIRS ?= $(GOPATH) $(GOBIN)
go-dirs:
	for dir in $(GODIRS); \
		do mkdir -pv $$dir; \
	done

yq:
	pip3 install yq
