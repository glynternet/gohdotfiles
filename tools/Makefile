SHELL = sh
UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
PACKAGE_INSTALL_CMD ?= brew install
DOCKER_PACKAGE_NAME ?= docker
Darwin_BREW_CASK_INSTALLS ?= rectangle
Darwin_SPECIFIC_INSTALL_RULES ?= $(Darwin_BREW_CASK_INSTALLS)
endif

ifeq ($(UNAME), Linux)
PACKAGE_INSTALL_CMD ?= sudo apt install --assume-yes
DOCKER_PACKAGE_NAME ?= docker.io docker-compose
endif

Darwin_PACKAGE_MANAGER_INSTALLS ?= trash
Linux_PACKAGE_MANAGER_INSTALLS ?= trash-cli xsel
PACKAGE_MANAGER_INSTALLS ?= bash-completion curl fzf git htop jq ncdu parallel python3 source-highlight tmux tree vim watch $($(UNAME)_PACKAGE_MANAGER_INSTALLS)

install: $(PACKAGE_MANAGER_INSTALLS) $($(UNAME)_SPECIFIC_INSTALL_RULES) docker go git sublime yq

$(PACKAGE_MANAGER_INSTALLS):
	$(PACKAGE_INSTALL_CMD) $@

# must be placed below 'install' rule for 'install' to be the default rule
$(Darwin_BREW_CASK_INSTALLS):
	brew install --cask $@

docker:
	$(PACKAGE_INSTALL_CMD) $(DOCKER_PACKAGE_NAME)
ifeq ($(UNAME), Linux)
	# allow running docker as current user
	# only required in Linux as the homebrew installer does this automatically, I believe
	sudo gpasswd -a $(shell whoami) docker
endif

go: go-dirs
	$(PACKAGE_INSTALL_CMD) golang

GOPATH ?= $(HOME)/dev
GOBIN ?= $(GOPATH)/bin
GODIRS ?= $(GOPATH) $(GOBIN)
go-dirs:
	for dir in $(GODIRS); \
		do mkdir -pv $$dir; \
	done

ifeq ($(UNAME), Darwin)
sublime:
	$(PACKAGE_INSTALL_CMD) sublime-text
endif

ifeq ($(UNAME), Linux)
# define only for linux a special way to install sublime, the Darwin way can be installed through brew
sublime:
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	sudo apt-get install apt-transport-https
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	sudo apt-get update
	sudo apt-get install sublime-text
endif

yq: python3
	pip3 install yq
