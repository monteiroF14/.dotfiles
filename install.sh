#! /usr/bin/bash

function helpmsg() {
	print_default "Usage: ${BASH_SOURCE[0]:-$0} [--gui] [--arch] [--all] [--help | -h]" 0>&2
	print_default '  --all: --gui + --arch'
	print_default ""
}
