#!/bin/bash
echo "Arg 0: $1"
GITHUB_TOKEN=6228a2e824c45f4ea10db728913398786aaec7b0
echo $GITHUB_TOKEN
DIR="./shared"
if ! [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
  echo 'Intializing the submodule'
  git submodule add https://$GITHUB_TOKEN@github.com/rajathy2020/second_repo.git shared
 else
  ###  Control will jump here if $DIR does NOT exists ###
  git submodule init
  git submodule update
  cd shared
  git checkout $1
  echo 'Getting the latest submodule update'
  git pull
  cd ..
fi
