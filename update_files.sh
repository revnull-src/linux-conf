#!/bin/bash

# URL,file_name,make_exe
CurlThese="
https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh|.git-prompt.sh|1
https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash|.git-completion.bash|1
https://raw.githubusercontent.com/vim-scripts/twilight256.vim/master/colors/twilight256.vim|twilight256.vim|0
"

for List in $CurlThese
do
    Url=`echo $List | cut -d'|' -f1`
    File=`echo $List | cut -d'|' -f2`
    Exe=`echo $List | cut -d'|' -f3`

    echo Downloading $File
    curl -# -o $File $Url
    if [ $Exe -eq 1 ]; then
        chmod 755 $File
    fi 
    echo
done

