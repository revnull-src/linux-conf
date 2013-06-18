# .bash_profile

# Source our .bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# Add our local bin to path
if [ -d ~/bin ]; then
    PATH=$PATH:$HOME/bin
    export PATH
fi
