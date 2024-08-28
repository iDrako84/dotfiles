#!/usr/bin/env bash
cd ~/dotfiles
status=$(git status --porcelain=v1 2> /dev/null | wc -l)

if [[ $status == 0 ]]; then 
  	echo ""
else 
	echo "dotfiles modificato: ${status}"
fi

