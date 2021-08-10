for file in ~/.{aliases,exports}; do
  if [[ -r "$file" ]] && [[ -f "$file" ]]; then
    source "$file"
  fi
done

if [ "$(uname -s)" = "Darwin" ]; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

  eval "$(rbenv init -)"
  eval "$(nodenv init -)"

  if [ $(uname -m) = "arm64" ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
  fi
fi

set -o vi
