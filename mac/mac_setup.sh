#! /bin/bash

# symbolic link for .zshrc
link_input_file() {
  INPUT_FILE=$1
  if [ -f "$HOME/INPUT_FILE" ]
  then
    cp $HOME/$INPUT_FILE $HOME/$INPUT_FILE.backup
    echo "Created a backup at $HOME/$INPUT_FILE.backup"
    rm $HOME/$INPUT_FILE
  fi
  ln -s $HOME/dotfiles/$INPUT_FILE $HOME/$INPUT_FILE
}

handle_file_exists() {
  INPUT_FILE=$1
  echo "$INPUT_FILE already exists, do you want to replace it? (y/n)"
  read answer
  if [ echo "$answer" | grep -iq "^y" ]
  then
    link_input_file $INPUT_FILE
  fi
}

setup_file_locally() {
  INPUT_FILE=$1
  if [ -f "$HOME/$INPUT_FILE" ]
  then
    handle_file_exists $INPUT_FILE
  else
    link_input_file $INPUT_FILE
  fi
}

setup_file_locally ".zshrc"
source $HOME/.zshrc

setup_file_locally ".vimrc"

setup_file_locally ".tmux.conf"
tmux source $HOME/.tmux.conf

