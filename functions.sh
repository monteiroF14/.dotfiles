#! /usr/bin/bash

# better git clone
clone() {
  echo Cloning $1 to ~/git/$1
  cd ~/git
  git clone git@github.com:$1 $1
  cd $1
}

# create folder and go inside
function mkd() {
  mkdir -p "$@" && cd "$@"
}

function print_default() {
  echo -e "$*"
}

function print_info() {
  echo -e "\e[1;36m$*\e[m" # cyan
}

function print_notice() {
  echo -e "\e[1;35m$*\e[m" # magenta
}

function print_success() {
  echo -e "\e[1;32m$*\e[m" # green
}

function print_warning() {
  echo -e "\e[1;33m$*\e[m" # yellow
}

function print_error() {
  echo -e "\e[1;31m$*\e[m" # red
}

function print_debug() {
  echo -e "\e[1;34m$*\e[m" # blue
}
