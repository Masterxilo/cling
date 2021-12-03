#!/bin/bash
. ./lib

if ! test -d ./cling ; then
    ./download-latest-cling-archive.sh
    
    test -d ./cling*/ || unar cling*.*
    mv ./cling*/ ./cling/
fi
