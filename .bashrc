# .bashrc

#
# BASH Options
#
shopt -s checkwinsize


#
# Env Vars
#
if [ `command -v vim` ]; then
    alias vi='vim'
    EDITOR=vim
else
    EDITOR=vi
fi
export EDITOR


#
# Make sure we have a local bin dir and add it to PATH
#
if [ ! -d $HOME/bin ]; then
    mkdir $HOME/bin
fi
PATH=$PATH:$HOME/bin
export PATH


#
# Adjust promt and add git goodness if available.
#
if [ -f $HOME/.git-prompt.sh ] && [ `command -v git` ]; then
    source $HOME/.git-prompt.sh
    # Bash Prompt (/w git status)
    PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
    GIT_PS1_SHOWDIRTYSTATE=1
    # Set some generic git options
    git config --global user.name "Ray Ramirez"
    git config --global color.ui true
    git config --global core.editor $EDITOR
    git config --global help.autocorrect 1
else
    PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
fi


#
# Setup our ssh keychain or ssh-agent
#
if [ -f $HOME/.ssh/id_dsa ] && [ `command -v keychain` ]; then
    eval `keychain -q --eval --agents "ssh" $HOME/.ssh/id_dsa`
    alias kc='eval `keychain --eval --agents "ssh" $HOME/.ssh/id_dsa`'
    alias kclear='keychain --clear'
    alias kcstop='keychain -k mine'
    alias kcstopa='keychain -k all'
elif [ `command -v ssh-agent` ] && [ `command -v ssh-add` ]; then
    sapid=`pgrep -U $LOGNAME ssh-agent | xargs`
    if [ "$sapid" = "" ]; then
        # there is no agent running
        if [ -e "$HOME/.agent_${HOSTNAME}.sh" ]; then
            # remove the old file
            rm -f $HOME/.agent_${HOSTNAME}.sh
        fi;
        # start a new agent
        #echo "Starting SSH-AGENT..."
        ssh-agent | grep -v echo >&$HOME/.agent_${HOSTNAME}.sh
        test -e $HOME/.agent_${HOSTNAME}.sh && source $HOME/.agent_${HOSTNAME}.sh
        ssh-add
    fi;
    test -e $HOME/.agent_${HOSTNAME}.sh && source $HOME/.agent_${HOSTNAME}.sh
    alias kagent='kill -9 ${SSH_AGENT_PID}'
fi


#
# Aliases
#
alias ls='ls -hF --color=auto'
#alias ssh='ssh -o ConnectTimeout=3 -o ConnectionAttempts=5 -o BatchMode=yes -o StrictHostKeyChecking=no'
# Make sure commands exist before aliasing
if [ `command -v colordiff` ]; then alias diff='colordiff'; fi
if [ `command -v htop` ]; then alias top='htop'; fi


#
# Add local environment
#
if [ -f $HOME/.localenv.sh ]; then
    source $HOME/.localenv.sh
fi

