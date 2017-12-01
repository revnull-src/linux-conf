#!/bin/bash

# All the bash goodness
ln -s -f $HOME/conf/.bash_profile $HOME
ln -s -f $HOME/conf/.bashrc $HOME

# Gitify my prompt
ln -s -f $HOME/conf/.git-prompt.sh $HOME
ln -s -f $HOME/conf/.git-completion.bash $HOME

# Because I'm old
ln -s -f $HOME/conf/.screenrc $HOME
# Lets see what the kids are using
ln -s -f $HOME/conf/.tmux.conf $HOME

# Setup vim
ln -s -f $HOME/conf/.vimrc $HOME
if [ ! -d "$HOME/.vim/colors/" ]; then
    mkdir -p $HOME/.vim/colors/
fi
ln -s -f $HOME/conf/twilight256.vim $HOME/.vim/colors/twilight256.vim

# Create the local host env
touch $HOME/.localenv.sh
