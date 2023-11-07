SHELL = sh
UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
PROFILE_FILENAME ?= .bash_profile
endif

ifeq ($(UNAME), Linux)
PROFILE_FILENAME ?= .bashrc
endif

PROFILE ?= $(HOME)/$(PROFILE_FILENAME)
GOH_BASHPROFILE_DIR ?= $(CURDIR)
GOH_BASHPROFILE ?= $(GOH_BASHPROFILE_DIR)/gohbashprofile
GOH_BASHPROFILE_LOCAL ?= $(HOME)/.gohprofilelocal

all: install local-profile

install:
	printf "\n" >> $(PROFILE)
	printf "export GOH_BASHPROFILE=\"$(GOH_BASHPROFILE)\"\n" >> $(PROFILE)
	printf '. "$$GOH_BASHPROFILE"\n' >> $(PROFILE)
	printf "export GOH_BASHPROFILE_LOCAL=\"$(GOH_BASHPROFILE_LOCAL)\"\n" >> $(PROFILE)
	printf '. "$$GOH_BASHPROFILE_LOCAL"\n' >> $(PROFILE)

local-profile:
	touch $(GOH_BASHPROFILE_LOCAL)
