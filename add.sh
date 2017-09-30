#!/bin/bash

set -e
set -u

git submodule add $1 ./submodules/$(basename $1)
git commit -m "Added new submodule $1"
