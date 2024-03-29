#! /usr/bin/bash

# vim aliases
alias v="nvim"

# directory aliases
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

alias rm="rm -rf"

# terminal aliases
alias c="clear"
alias l="ls -lha"

# progress bar in copy?
alias cpv='rsync -ah --info=progress2'

# git aliases
alias yoink="git checkout master && git fetch upstream master && git merge upstream/master"

alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
