#!/bin/bash
. ./lib

./build.sh

sudo docker run --rm --interactive masterxilo/cling cling --help | less

