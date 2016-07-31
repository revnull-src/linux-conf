#!/bin/bash

# URL,file_name,make_exe
curlThese="
https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh|.git-prompt.sh|1
https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash|.git-completion.bash|1
https://raw.githubusercontent.com/vim-scripts/twilight256.vim/master/colors/twilight256.vim|twilight256.vim|0
"

for list in $curlThese
do
    url=`echo $list | cut -d'|' -f1`
    file=`echo $list | cut -d'|' -f2`
    exe=`echo $list | cut -d'|' -f3`

    echo Downloading $file
    curl -# -o $file $url
    if [ $exe -eq 1 ]; then
        chmod 755 $file
    fi 
    echo
done

