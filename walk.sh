#!/bin/bash

set -e
set -u

files=$(find . -name '*.json' -type f)

for file in ${files}
do
    name = tools/$(basename ${files})
    test -h ${name} || (ln -s ${file} ${name} && git add ${name})
done

git commit -m "Walked the repository for new files in submodules"
