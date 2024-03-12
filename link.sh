#! /usr/bin/bash

set -u

link_file() {
	local source_file="$1"
	local target_file="${2:-$source_file}"

	if [ ! -e "$target_file" ] && [ ! -L "$target_file" ]; then
		ln -s "~/.dotfiles/$source_file" "$target_file"
	fi
}

link_file ".gitconfig"
link_file ".aliases" ".bash_aliases"
