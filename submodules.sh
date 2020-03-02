#!/bin/bash

echo Hello, World!

DIR="./attach7"
if ! [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
  echo 'Intializing the submodule'
  git submodule add git@github.com:rajathy2020/second_repo.git attach7
  git submodule init
  git submodule update
  cd attach7
  git checkout master
  echo 'Getting the latest submodule update'
  git pull
  cd ..
  git add attach7
  git add submodles.sh
  git commit -m 'updating repo with latest submodule'
  git push
  echo "Updates pushed to remote"
else
  ###  Control will jump here if $DIR does NOT exists ###
  git submodule init
  git submodule update
  cd attach7
  git checkout master
  echo 'Getting the latest submodule update'
  git pull
  cd ..
  git add attach7
  git add submodules.sh.sh
  git commit -m 'updating repo with latest submodule'
  git push
  echo "Updates pushed to remote"
fi

