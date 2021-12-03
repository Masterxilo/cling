#!/bin/bash
. ./lib

# TODO enumerate files, maybe from https://root.cern/download/cling/ instead of hardcode
url='https://root.cern/download/cling/cling_2020-11-05_ROOT-ubuntu2004.tar.bz2'

fn="$(basename "$url")"
(
test -f "$fn" || wget "$url"
) >&2

#echo "$fn"