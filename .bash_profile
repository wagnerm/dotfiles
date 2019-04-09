#!/bin/bash

for file in ~/.{bashrc,aliases,exports}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		source "$file"
	fi
done

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

eval "$(rbenv init -)"
eval "$(nodenv init -)"
