#!/bin/bash

# All the bash goodness
ln -s -f ~/conf/.bash_profile ~/
ln -s -f ~/conf/.bashrc ~/

# Gitify my prompt
ln -s -f ~/conf/.git-prompt.sh ~/

# Because I'm old
ln -s -f ~/conf/.screenrc ~/

# Setup vim
ln -s -f ~/conf/.vimrc ~/
if [ ! -d "~/.vim/colors/" ]; then
    mkdir -p ~/.vim/colors/
fi
ln -s -f ~/conf/twilight.vim ~/.vim/colors/twilight.vim

# Create the local host env
touch ~/.localenv.sh
