#!/bin/sh

if ! [ -f "$HOME/.laptop.antidone" ]; then

  append_to_file "$HOME/.zshrc" "source ~/Code/git/antigen/antigen.zsh"

  # Load the oh-my-zsh's library.
  append_to_file "$HOME/.zshrc" "antigen use oh-my-zsh"

  # Bundles from the default repo (robbyrussell's oh-my-zsh).
  append_to_file "$HOME/.zshrc" "antigen bundle git"
  append_to_file "$HOME/.zshrc" "antigen bundle heroku"
  append_to_file "$HOME/.zshrc" "antigen bundle command-not-found"
  append_to_file "$HOME/.zshrc" "antigen bundle zsh-users/zsh-syntax-highlighting"
  append_to_file "$HOME/.zshrc" "antigen bundle robbyrussell/oh-my-zsh plugins/ruby"
  append_to_file "$HOME/.zshrc" "antigen bundle zsh-users/zsh-syntax-highlighting"
  append_to_file "$HOME/.zshrc" "antigen bundle zsh-users/zsh-syntax-highlighting"
  append_to_file "$HOME/.zshrc" "antigen bundle zsh-users/zsh-syntax-highlighting"

  # Load the theme.
  append_to_file "$HOME/.zshrc" "antigen theme agnoster"

  # Tell antigen that you're done.
  append_to_file "$HOME/.zshrc" "antigen apply"

  touch "$HOME/.laptop.antidone"

  source ~/.zshrc

else
  fancy_echo '.zshrc file updated. nothing to do...'
fi