if [ "$(uname -s)" = "Darwin" ]; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

  if [ $(uname -m) = "arm64" ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
  fi

  eval "$(rbenv init -)"
  eval "$(nodenv init -)"
fi

set -o vi

for file in ~/.{aliases,exports}; do
  if [[ -r "$file" ]] && [[ -f "$file" ]]; then
    source "$file"
  fi
done
