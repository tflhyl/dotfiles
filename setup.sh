#!/bin/sh

# TODO install brew if needed
brew install rbenv

# bash
cp .bash_profile ~/.
cp .alias ~/.
cp .inputrc ~/.
source ~/.bash_profile

# git
cp .gitconfig ~/.
echo "Enter your git username:"
read git_username
git config --global user.name $git_username
echo "Enter your git email:"
read git_email
git config --global user.email $git_email

# vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc ~/.
mkdir -p ~/.vim/colors && cp flattown.vim ~/.vim/colors/
vim -u ~/.vimrc +PluginInstall +qall
npm -g install instant-markdown-d

# iTerm
open nakafurano.itermcolors

# Xcode pref
defaults write com.apple.dt.Xcode ShowBuildOperationDuration YES

