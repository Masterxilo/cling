#!/bin/bash
. ./lib

./build.sh

#  --volume /:/host 
sudo docker run --rm --interactive --tty masterxilo/cling

# or
# something1-exec1-install cling
# cling
