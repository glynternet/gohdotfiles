SHELL = sh
UNAME := $(shell uname)

ifeq ($(UNAME), Darwin)
SED_INPLACE_ARG ?= ''
endif

PROFILE_FILENAME ?= .gitconfig
PROFILE ?= $(HOME)/$(PROFILE_FILENAME)

GOH_GITDOTFILES_DIR ?= $(CURDIR)
CONFIG_TEMPLATE_FILE ?= $(GOH_GITDOTFILES_DIR)/config-template
COMMIT_TEMPLATE_FILE ?= $(GOH_GITDOTFILES_DIR)/commit-template
TEMPLATES_DIRECTORY ?= $(GOH_GITDOTFILES_DIR)/git-templates

TMP_CONFIG_FILE ?= /tmp/goh_gitconfig
MANAGED_CONFIG ?= $(HOME)/.gitconfig-gohdotfiles
INCLUDE_MARKER ?= gohdotfiles-managed git config

install:
	cp -v $(CONFIG_TEMPLATE_FILE) $(TMP_CONFIG_FILE)
	sed -i $(SED_INPLACE_ARG) 's@{{COMMIT_TEMPLATE_FILE}}@$(COMMIT_TEMPLATE_FILE)@g' $(TMP_CONFIG_FILE)
	sed -i $(SED_INPLACE_ARG) 's@{{TEMPLATES_DIRECTORY}}@$(TEMPLATES_DIRECTORY)@g' $(TMP_CONFIG_FILE)
	mv -v $(TMP_CONFIG_FILE) $(MANAGED_CONFIG)
	@if [ ! -f $(PROFILE) ]; then \
		printf '# $(INCLUDE_MARKER) (do not remove)\n[include]\n\tpath = ~/.gitconfig-gohdotfiles\n' > $(PROFILE); \
	elif ! grep -q '$(INCLUDE_MARKER)' $(PROFILE); then \
		tmp=$$(mktemp); \
		printf '# $(INCLUDE_MARKER) (do not remove)\n[include]\n\tpath = ~/.gitconfig-gohdotfiles\n\n' > $$tmp; \
		cat $(PROFILE) >> $$tmp; \
		mv $$tmp $(PROFILE); \
		echo "NOTE: $(PROFILE) already had content. Check for duplicate settings."; \
	fi
