#!/bin/bash

git pull

wget --mirror --convert-links --page-requisites --no-parent --no-check-certificate --cut-dirs=0 --no-host-directories https://senseandsensitivity.nl

git add .
git commit -am "Auto commit"
git push
