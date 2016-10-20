#!/bin/bash
BASE_PATH=$(pwd)
SUB_PATH=$(cat ./.gitmodules | grep path | awk '{print $3}')

for path in $SUB_PATH
do
  test -d "$path" || continue
  cd $path
  echo "npm i in "$path
  npm i
  cd "${BASE_PATH}"
done
