#!/bin/bash

git pull

wget --mirror --restrict-file-names=windows --html-extension --convert-links --page-requisites --no-parent --no-check-certificate --cut-dirs=0 --no-host-directories https://senseandsensitivity.nl

git config --global user.email "don.hannema@gmail.com"
git config --global user.name "Don Hannema"
git add .
git commit -am "Auto commit"
git push
