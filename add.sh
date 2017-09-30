#!/bin/bash

set -e
set -u

URL="$1"

git submodule add "${URL}" ./submodules/"$(basename "${URL}")"

files=$(find . -name '*.json' -type f)
for file in ${files}
do
    name=tools/"$(basename "${file}")"
    test -h "${name}" || (ln -s ../"${file}" "${name}" && git add "${name}")
done

git commit -m "Added new submodule $1"
