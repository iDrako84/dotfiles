#!/usr/bin/env bash

cd ~/dotfiles
gitstatus=$(git status --porcelain=v1 2> /dev/null | wc -l)
gitcommit=$(git rev-list --right-only --count origin/master..master 2> /dev/null)
repository="dotfiles:"

if [ "$gitstatus" != 0 ] || [ "$gitcommit" != 0 ]; then
	if [ "$gitstatus" != 0 ]; then
		repository="${repository} Modifiche: ${gitstatus}"
	fi
	if [ "$gitcommit" != 0 ];then
		repository="${repository} Commit: ${gitcommit}"
	fi
	echo "${repository}"
else
	echo ""
fi

