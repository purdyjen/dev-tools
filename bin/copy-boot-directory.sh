#!/bin/bash
# Here, assign as the value the head of the working directory where you saved the dev-tools directory in order to generate the absolute path for where the templates directory is. This is necessary so that it can be copied over to whatever your current working directory is.
pwdHead=NULL

# Core script
mkdir "$1"
cp -R ${pwdHead}/dev-tools/templates/boot-template/* "$PWD"/"$1"
cd "$1" || exit
code .
