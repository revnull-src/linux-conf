#!/bin/bash

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
chmod 755 git-prompt.sh
mv git-prompt.sh .git-prompt.sh

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
chmod 755 git-completion.bash
mv git-completion.bash .git-completion.bash

