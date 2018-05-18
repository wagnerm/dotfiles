#!/bin/bash

for file in ~/.{bashrc,aliases,exports}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		source "$file"
	fi
done
