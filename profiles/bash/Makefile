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
HOSTNAME_PROFILE ?= $(GOH_BASHPROFILE_DIR)/hostname/$(shell hostname)

all: install hostname-profile

install:
	printf "\n" >> $(PROFILE)
	printf "export GOH_BASHPROFILE=\"$(GOH_BASHPROFILE)\"\n" >> $(PROFILE)
	printf '. "$$GOH_BASHPROFILE"\n' >> $(PROFILE)

hostname-profile:
	touch $(HOSTNAME_PROFILE)
