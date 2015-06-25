#!/usr/bin/env sh

git submodule update --init --recursive

for x in $(ls -d *); do
    cd $x
    git checkout master
    git pull origin master
    cd -
    git add $x
done
