#! /bin/bash -x

# Helper script for allowing external shell files to be sourced.
# This allows them to be created separate from my personal public
# dotfiles repo.

for i in $HOME/.*-dotfiles
do
  for file in $i/*.sh
  do
    source $file
  done
done
