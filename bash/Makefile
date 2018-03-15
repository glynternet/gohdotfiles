SHELL = sh

PROFILE_FILENAME ?= .bash_profile
PROFILE ?= $(HOME)/$(PROFILE_FILENAME)
GOH_DOTFILES ?= $(HOME)/gohdotfiles
GOH_BASHPROFILE ?= $(GOH_DOTFILES)/bash/gohbashprofile

install:
	printf "\n" >> $(PROFILE)
	printf "export GOH_DOTFILES=$(GOH_DOTFILES)\n" >> $(PROFILE)
	printf "export GOH_BASHPROFILE=$(GOH_BASHPROFILE)\n" >> $(PROFILE)
	printf ". $(GOH_BASHPROFILE)\n" >> $(PROFILE)