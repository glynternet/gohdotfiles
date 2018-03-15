SHELL = sh
UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
PROFILE_FILENAME ?= .bash_profile
endif

ifeq ($(UNAME), Linux)
PROFILE_FILENAME ?= .bashrc
endif

PROFILE ?= $(HOME)/$(PROFILE_FILENAME)
GOH_DOTFILES ?= $(HOME)/gohdotfiles
GOH_BASHPROFILE ?= $(GOH_DOTFILES)/bash/gohbashprofile

install:
	printf "\n" >> $(PROFILE)
	printf "export GOH_DOTFILES=$(GOH_DOTFILES)\n" >> $(PROFILE)
	printf "export GOH_BASHPROFILE=$(GOH_BASHPROFILE)\n" >> $(PROFILE)
	printf ". $(GOH_BASHPROFILE)\n" >> $(PROFILE)