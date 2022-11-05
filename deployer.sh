#!/bin/bash 
date=$(date '+%Y-%m-%d-%H-%M-%S')
echo $date
mkdir ../github-backups/$date-torbatti.github.io/
cp ../torbatti.github.io/ ../github-backups/$date-torbatti.github.io/
hugo
sudo rm -r ../torbatti.github.io/*
cp -r public/* ../torbatti.github.io/
cp LICENSE ../torbatti.github.io/
cd ../torbatti.github.io/
git add .
git commit -m "updated site"
git pull
git push