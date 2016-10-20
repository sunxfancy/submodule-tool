#!/bin/bash
BASE_PATH=$(pwd)
SUB_PATHS=$(cat ./.gitmodules | grep path | awk '{print $3}')

for path in $SUB_PATHS; do
  test -d "$path" || continue
  cd $path
  if test -e "package.json"; then
    if cat package.json | grep -iq dependencies; then
      echo "npm i in "$path
      npm i
      cd "${BASE_PATH}"
    else
      echo "no dependencies in "$path
    fi
  else
    echo "no package.json in "$path
  fi
done
