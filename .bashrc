# .bashrc

# Add our local bin to path
if [ -d $HOME/bin ]; then
    PATH=$PATH:$HOME/bin
    export PATH
fi

if [ -f $HOME/.git-prompt.sh ]; then
    source $HOME/.git-prompt.sh
    # Bash Prompt (/w git status)
    PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
    GIT_PS1_SHOWDIRTYSTATE=1
fi

# Aliases
alias ls='ls -hF --color=auto'
if [ `command -v vim` ]; then alias vi='vim'; fi
if [ `command -v colordiff` ]; then alias diff='colordiff'; fi
if [ `command -v htop` ]; then alias top='htop'; fi
