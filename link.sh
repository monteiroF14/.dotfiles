#! /usr/bin/bash

set -u

all_linked=false

# list of dotfiles to link
declare -A dotfiles=(
	["~/.gitconfig"]="false",
	["~/.bash_aliases"]="false"
)

# link the git config
if [ ! -e ~/.gitconfig ]; then
	ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
	dotfiles["~/.gitconfig"]="true"
fi

if [ ! -e ~/.bash_aliases ]; then
	ln -s ~/.dotfiles/.aliases ~/.bash_aliases
	dotfiles["~/.bash_aliases"]="true"
fi

echo "dotfiles variable:"
for key in "${!dotfiles[@]}"; do
    echo "$key: ${dotfiles[$key]}"
done

for file in "${!dotfiles[@]}"; do
	all_linked=false
	if [ -e "$file" ]; then 
		echo $file
	fi
done

echo "dotfiles variable:"
for key in "${!dotfiles[@]}"; do
    echo "$key: ${dotfiles[$key]}"
done

[[ $all_linked == true ]] && echo "all files linked" || echo "some files failed linking"
