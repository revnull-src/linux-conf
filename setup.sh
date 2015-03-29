#!/bin/bash

# All the bash goodness
ln -s -f ~/conf/.bash_profile ~/
ln -s -f ~/conf/.bashrc ~/

# Gitify my prompt
ln -s -f ~/conf/.git-prompt.sh ~/
ln -s -f ~/conf/.git-completion.bash ~/

# Because I'm old
ln -s -f ~/conf/.screenrc ~/
# Lets see what the kids are using
ln -s -f ~/conf/.tmux.conf ~/

# Setup vim
ln -s -f ~/conf/.vimrc ~/
if [ ! -d "~/.vim/colors/" ]; then
    mkdir -p ~/.vim/colors/
fi
ln -s -f ~/conf/twilight256.vim ~/.vim/colors/twilight256.vim

# Create the local host env
touch ~/.localenv.sh
