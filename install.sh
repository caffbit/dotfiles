#!/bin/bash

export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

# oh-my-zsh custom dir
export ZSH_CUSTOM_DIR="${ZSH_CUSTOM_DIR:-$HOME/.oh-my-zsh/custom}"
mkdir -p "$ZSH_CUSTOM_DIR/plugins"

# Create symbolic links
ln -sf "$PWD/.zshrc" "$HOME"/.zshrc
ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf
ln -sf "$PWD/.aider.conf.yml" "$HOME"/.aider.conf.yml
ln -sf "$PWD/git" "$XDG_CONFIG_HOME"/git
ln -sf "$PWD/lazygit" "$XDG_CONFIG_HOME"/lazygit

# Zsh plugins
[ ! -d "$ZSH_CUSTOM_DIR/plugins/zsh-syntax-highlighting" ] && \
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM_DIR/plugins/zsh-syntax-highlighting"

# pure
[ ! -d "$ZSH_CUSTOM_DIR/plugins/pure" ] && \
  git clone https://github.com/sindresorhus/pure.git "$ZSH_CUSTOM_DIR/plugins/pure"
