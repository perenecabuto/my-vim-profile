#!/usr/bin/env sh

for x in $(ls -d *); do
    cd $x
    git checkout master
    git pull origin master
    cd -
    git add $x
done
