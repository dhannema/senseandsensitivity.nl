#!/bin/bash

# $ nano /etc/config/crontab    
# 0 6 * * * cd /share/Don/senseandsensitivity.nl/ && ./wordpress.sh > wordpress.log 2>&1
# $ crontab /etc/config/crontab 
# $ /etc/init.d/crond.sh restart

exe() { 
    if [ "$DRY_RUN" == "" ]; then
        echo "`date` \$ $@" ; "$@" ; 
    else
        echo "`date` \$ $@" ; 
    fi
}

exe /opt/bin/git pull

exe /usr/bin/wget --mirror --restrict-file-names=windows --html-extension --convert-links --page-requisites --no-parent --no-check-certificate --cut-dirs=0 --no-host-directories https://senseandsensitivity.nl

exe sed -i "s/\&copy 2018 Sense \& Sensitivity/\&copy 2018 Sense \& Sensitivity [Maintenance Mode]/" index.html

exe /opt/bin/git config user.email "don.hannema@gmail.com"
exe /opt/bin/git config user.name "Don Hannema"
exe /opt/bin/git add .
exe /opt/bin/git commit -a -m "Auto commit"
exe /opt/bin/git push
