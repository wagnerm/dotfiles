#!/bin/bash

if [ "$(uname -s)" = "Darwin" ]; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

  if [ $(uname -m) = "arm64" ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
  fi

  eval "$(rbenv init -)"
  eval "$(nodenv init -)"
elif [ "$(uname -s)" = "Linux" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
  fi
fi

set -o vi

for file in ~/.{aliases,exports,env}; do
  if [[ -r "$file" ]] && [[ -f "$file" ]]; then
    source "$file"
  fi
done

if [ "$SHELL" = "/bin/zsh" ]; then
	bindkey "^[[H" beginning-of-line
    bindkey "^[[F" end-of-line
    bindkey -v '^?' backward-delete-char
fi

unsetopt nomatch
