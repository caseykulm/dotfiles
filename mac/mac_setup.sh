#! /bin/bash

# symbolic link for .zshrc
link_input_file() {
  INPUT_FILE=$1
  TARGET_FILE="$HOME/$INPUT_FILE"
  if [ -f "$TARGET_FILE" ]
  then
    echo -n "Create backup? (y/n): "
    read answer
    if [ "$answer" == "y" ]
    then
      BACKUP_FILE="$TARGET_FILE.backup"
      cp $TARGET_FILE $BACKUP_FILE
      echo "Created a backup at $BACKUP_FILE"
      rm $TARGET_FILE
    else
      return 0
    fi
  fi
  SOURCE_FILE="$HOME/dotfiles/$INPUT_FILE"
  ln -s $SOURCE_FILE $TARGET_FILE
}

handle_file_exists() {
  INPUT_FILE=$1
  echo -n "$INPUT_FILE already exists, do you want to replace it? (y/n): "
  read answer
  if [ "$answer" == "y" ] 
  then
    link_input_file $INPUT_FILE
  fi
}

setup_file_locally() {
  INPUT_FILE=$1
  TARGET_FILE="$HOME/$INPUT_FILE"
  if [ -f "$TARGET_FILE" ]
  then
    handle_file_exists $INPUT_FILE
  else
    link_input_file $INPUT_FILE
  fi
}

setup_file_locally ".zshrc"
source "$HOME/.zshrc"

setup_file_locally ".vimrc"

setup_file_locally ".tmux.conf"
tmux source "$HOME/.tmux.conf"

# Setup Vim Package installer via https://github.com/VundleVim/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

