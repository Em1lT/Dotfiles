.PHONY: install

# Variables
UNAME := $(shell uname)
HOMEBREW_PACKAGES_FILE := packages_homebrew.txt
APT_PACKAGES_FILE := packages_apt-get.txt

# Target directory for dotfiles
DOTFILES_TARGET_DIR := $(HOME)/dotfiles

# GitHub usernames
GITHUB_USER := Em1lt

install:
	@echo "\nFetching dotfiles from GitHub user $(GITHUB_USER)..."
	@git clone https://github.com/$(GITHUB_USER)/dotfiles.git $(DOTFILES_TARGET_DIR) || \
        echo "Failed to clone dotfiles repository from GitHub user $(GITHUB_USER)."
	@echo "\nCreating symbolic links for dotfiles..."
	# @ln -sf $(DOTFILES_TARGET_DIR)/.bashrc $(HOME)/.bashrc
	@ln -sf $(DOTFILES_TARGET_DIR)/.vimrc $(HOME)/.vimrc
	# @ln -sf $(DOTFILES_TARGET_DIR)/.zshrc $(HOME)/.zshrc
	# @echo "Checking the operating system..."
	# @if [ "$(UNAME)" = "Darwin" ]; then \
  #     if [ -f $(HOMEBREW_PACKAGES_FILE) ]; then \
  #         echo "Installing packages using Homebrew..."; \
  #         command -v brew > /dev/null && brew install $$(cat $(HOMEBREW_PACKAGES_FILE)) \
  #             || echo "Homebrew not found. Skipping Homebrew installations."; \
  #     else \
  #         echo "$(HOMEBREW_PACKAGES_FILE) not found. Skipping Homebrew installations."; \
  #     fi \
  # else \
  #     echo "This Makefile is intended for macOS. Skipping Homebrew installations."; \
  # fi
	# @echo "\nInstalling packages using apt-get..."
	# @if [ -f $(APT_PACKAGES_FILE) ]; then \
  #     command -v apt-get > /dev/null && sudo apt-get install -y $$(cat $(APT_PACKAGES_FILE)) \
  #         || echo "apt-get not found. Skipping apt-get installations."; \
  # else \
  #     echo "$(APT_PACKAGES_FILE) not found. Skipping apt-get installations."; \
  # fi
