#!/bin/bash

packages=("zsh" "tmux" "fd" "tldr", "ripgrep", "bat", "exa", "fzf", "httpie", "jq", "lua", "luajit", "nginx", "tldr", "tmux", "wget", "yarn", "youtube-dl", "kitty")

create_symbolic_links() {
  echo "Create symbolic links for dotfiles..."
  ln -sf "${DOTFILES_TARGET_DIR}/.vimrc" "${HOME}/.vimrc"
  ln -sf "${DOTFILES_TARGET_DIR}/.tmux.conf" "${HOME}/.tmux.conf"
  ln -sf "${DOTFILES_TARGET_DIR}/.zshrc" "${HOME}/.zshrc"
}

zsh_default_shell() {
  echo "Checking the Terminal. It needs to be zsh..."
  if [ "${SHELL}" = "/usr/bin/zsh" ]; then
    echo "zsh is already installed..."
  else
    chsh -s "$(command -v zsh)"
  fi
}

install_nvim_mac() {
  # install separate and link to lua dir on dotfiles
  echo "Installing Neovim..."
  brew install neovim
  echo "Linking Neovim to .config/nvim..."
  ln -sf "${DOTFILES_TARGET_DIR}/Neovim" "${HOME}/.config/nvim"
}

check_and_install_brew() {
  echo "Checking Homebrew..."
  if ! command -v brew >/dev/null 2>&1; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    echo "Homebrew is already installed..."
  fi
}


check_and_install_essential_linux() {
    for package in "${packages[@]}"; do
        echo "Installing $package..."
        brew install $package
    done
}

check_and_install_essential_linux() {
    for package in "${packages[@]}"; do
        echo "Installing $package..."
        sudo apt-get install -y $package
    done
}

install_dotfiles() {
    if [ "$(uname)" == "Darwin" ]; then
        OS="macOS"
    elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
        OS="Linux"
    else
        OS="Unknown"
    fi

    echo "Detected operating system: $OS"
    if [ "$OS" == "macOS" ]; then
        echo "Running macOS-specific commands..."
        check_and_install_brew
        check_and_install_essential_mac
        install_nvim_mac
    fi

    # Add your Linux-specific commands here
    if [ "$OS" == "Linux" ]; then
        echo "Running Linux-specific commands..."
        check_and_install_essential_linux
        install_nvim
    fi

    # create_symbolic_links
    # zsh_default_shell
}

install_dotfiles
