#!/bin/sh

cd $HOME

## VIM
# Can't this be in the .vim folder?
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.vim ~/.vim

mkdir .vim/backup_files
mkdir .vim/swap_files
mkdir .vim/undo_files

## GIT
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/.gitignore_global ~/.gitignore_global
ln -s ~/.dotfiles/git/.gitmailmap ~/.gitmailmap

