#! /bin/bash

# -x # toggle this to enable verbose logging

# Helper script for allowing external shell files to be sourced.
# This allows them to be created separate from my personal public
# dotfiles repo.

for i in $(find -L $HOME/.*-dotfiles);
do
  if [[ -d $i ]]
  then
    # echo "Looking for files to source in $i"
    for file in $(find -L $i/*.sh);
    do
      # echo "  Sourcing $file"
      source $file
    done
    for file in $(find -L $i/*.bash);
    do
      source $file
    done
  fi
done
