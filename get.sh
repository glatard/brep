#!/bin/bash

set -e
set -u

file=$1

link=$(file "${file}" | awk '{print $NF}')
submodule=$(echo "${link}" | awk -F '/' '{print $2"/"$3"/"$4}')

git submodule init
git submodule update "${submodule}"
