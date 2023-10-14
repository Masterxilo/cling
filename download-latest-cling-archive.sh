#!/bin/bash
. ./lib

# TODO enumerate files, maybe from https://root.cern/download/cling/ instead of hardcode # on the other hand, it seems this was the last binary ever prodced so far

url='https://root.cern/download/cling/cling_2020-11-05_ROOT-ubuntu2004.tar.bz2'

fn="$(basename "$url")"
(
test -f "$fn" || wget "$url"
) >&2

#echo "$fn"
