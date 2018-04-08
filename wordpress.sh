#!/bin/bash

exe() { 
    if [ "$DRY_RUN" == "" ]; then
        echo "`date` \$ $@" ; "$@" ; 
    else
        echo "`date` \$ $@" ; 
    fi
}

exe /opt/bin/git pull

exe /usr/bin/wget -O --mirror --restrict-file-names=windows --html-extension --convert-links --page-requisites --no-parent --no-check-certificate --cut-dirs=0 --no-host-directories https://senseandsensitivity.nl

exe /opt/bin/git status
exe /opt/bin/git config user.email "don.hannema@gmail.com"
exe /opt/bin/git config user.name "Don Hannema"
exe /opt/bin/git add .
exe /opt/bin/git commit -a -m "Auto commit"
exe /opt/bin/git push
