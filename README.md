# brep

A prototype distributed repository for Boutiques tools.

Boutiques tool descriptors are in `tools`. A fresh clone of this repository will only contain symbolic links
pointing to files in empty sub-directories under `submodules`. 
* To fetch the content of a descriptor: `./get.sh tools/<file>`
* To add a new Git repo and extract its Boutiques descriptors: `./add.sh <git_url>`
