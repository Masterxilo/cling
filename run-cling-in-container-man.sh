#!/bin/bash
. ./lib

./build.sh

sudo docker run --rm --interactive --tty --entrypoint man masterxilo/cling cling

