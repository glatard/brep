#!/bin/bash

set -e
set -u

git submodule add $1 ./submodules/$(basename $1)

files=$(find . -name '*.json' -type f)
for file in ${files}
do
    name=tools/$(basename ${file})
    test -h ${name} || (ln -s ../${file} ${name} && git add ${name})
done

git commit -m "Added new submodule $1"
