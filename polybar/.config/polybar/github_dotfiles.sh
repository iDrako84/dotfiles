#!/usr/bin/env bash
cd ~/dotfiles
status=$(git status --porcelain=v1 2> /dev/null | wc -l)

if [ -z status ]; then 
  	echo ""
else 
	echo "dotfiles modificato: ${status}"
fi

