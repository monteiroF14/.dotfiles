#! /usr/bin/bash

set -u

link_file() {
	local source_file="$1"
	local target_file="${2:-$source_file}"

	if [ ! -e "$target_file" ]; then
		ln -s "$HOME/.dotfiles/$source_file" "$target_file" || {
			echo "Error: Failed to link $source_file to $target_file"
			exit 1
		}
		echo "Linked $source_file to $target_file"
	fi
}

link_file ".gitconfig"
link_file ".aliases" ".bash_aliases"

echo "all files linked!"
