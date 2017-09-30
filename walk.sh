#!/bin/bash

set -e
set -u

files=$(find . -name '*.json' -type f)

for file in ${files}
do
    ln -s ${file}
    git add $(basename ${file})
done

git commit -m "Walked the repository for new files in submodules"
