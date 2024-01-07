#!/bin/bash


create_symbolic_links() {
  echo "Create symbolic links for dotfiles..."
  ln -sf "${DOTFILES_TARGET_DIR}/.bashrc" "${HOME}/.bashrc"
  ln -sf "${DOTFILES_TARGET_DIR}/.vimrc" "${HOME}/.vimrc"
  ln -sf "${DOTFILES_TARGET_DIR}/.tmux.conf" "${HOME}/.tmux.conf"
  ln -sf "${DOTFILES_TARGET_DIR}/Neovim" "${HOME}/.config/nvim"
  ln -sf "${DOTFILES_TARGET_DIR}/.zshrc" "${HOME}/.zshrc"
}

check_and_install_zsh() {
  echo "Checking the Terminal. It needs to be zsh..."
  if [ "${SHELL}" = "/usr/bin/zsh" ]; then
    echo "zsh is already installed..."
  else
    echo "Installing zsh..."
    sudo apt-get install zsh
    echo "Defaulting terminal to zsh"
    chsh -s "$(command -v zsh)"
  fi
}

install_dotfiles() {
  create_symbolic_links
  check_and_install_zsh
}

install_dotfiles
