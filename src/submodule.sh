#!/bin/bash
BASE_PATH=$(pwd)
SUB_PATHS=$(cat ./.gitmodules | grep path | awk '{print $3}')

for path in $SUB_PATHS
do
  test -d "$path" || continue
  cd $path
  echo "npm i in "$path
  npm i
  cd "${BASE_PATH}"
done
