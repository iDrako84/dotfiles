#!/usr/bin/env bash

cd ~/dotfiles
gitstatus=$(git status --porcelain=v1 2> /dev/null | wc -l)
gitcommit=$(git rev-list --right-only --count origin/master..master 2> /dev/null)
repository="dotfiles:"
echo "${gitstatus} ${gitcommit}"

