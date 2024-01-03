.PHONY: install

UNAME := $(shell uname)
HOMEBREW_PACKAGES_FILE := packages_homebrew.txt
APT_PACKAGES_FILE := packages_apt-get.txt

install:
	@echo "Checking the operating system..."
	@if [ "$(UNAME)" = "Darwin" ]; then \
        if [ -f $(HOMEBREW_PACKAGES_FILE) ]; then \
            echo "Installing packages using Homebrew..."; \
            command -v brew > /dev/null && brew install $$(cat $(HOMEBREW_PACKAGES_FILE)) \
                || echo "Homebrew not found. Skipping Homebrew installations."; \
        else \
            echo "$(HOMEBREW_PACKAGES_FILE) not found. Skipping Homebrew installations."; \
        fi \
    else \
        echo "This Makefile is intended for macOS. Skipping Homebrew installations."; \
    fi
	@echo "\nInstalling packages using apt-get..."
	@if [ -f $(APT_PACKAGES_FILE) ]; then \
        command -v apt-get > /dev/null && sudo apt-get install -y $$(cat $(APT_PACKAGES_FILE)) \
            || echo "apt-get not found. Skipping apt-get installations."; \
    else \
        echo "$(APT_PACKAGES_FILE) not found. Skipping apt-get installations."; \
    fi
