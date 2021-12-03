#!/bin/bash
. ./lib

if ! which cling ; then
    ./extract-cling-archive-here.sh
    ./create-binary-link ./cling/bin/cling
fi

# or
# something1-exec1-install cling