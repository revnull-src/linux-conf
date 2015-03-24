#!/bin/bash

# All the bash goodness
ln -s -f ~/conf/.bash_profile ~/
ln -s -f ~/conf/.bashrc ~/

# Gitify my prompt
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
chmod 755 git-prompt.sh
mv git-prompt.sh .git-prompt.sh
ln -s -f ~/conf/.git-prompt.sh ~/
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
chmod 755 git-completion.bash
mv git-completion.bash .git-completion.bash
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
ln -s -f ~/conf/twilight.vim ~/.vim/colors/twilight.vim

# Create the local host env
touch ~/.localenv.sh
