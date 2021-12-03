#!/bin/bash
. ./lib

./build.sh

#  --volume /:/host 
docker run --rm --interactive --tty masterxilo/cling
