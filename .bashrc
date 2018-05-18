#!/bin/bash

set -o vi

if [[ -d /etc/bash_completion.d/ ]]; then
	for file in /etc/bash_completion.d/* ; do
		source "$file"
	done
fi
