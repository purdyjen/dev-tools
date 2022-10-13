#!/bin/bash

# Here, assign as the value the head of the working directory where you saved the dev-tools directory in order to generate the absolute path for where the templates directory is. This is necessary so that it can be copied over to whatever your current working directory is.
pwdHead=NULL

# Here, assign as the value your GitHub username
username=NULL

mkdir "$1"
cp -R ${pwdHead}/dev-tools/templates/mvc-template/* "$PWD"/"$1"
cd "$1" || exit
npm install
code .

# git/GitHub script
echo "# $1" >>README.md
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/${username}/"$1".git
git push -u origin main
