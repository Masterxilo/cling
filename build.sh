#!/bin/bash
. ./bash_lib

tag='masterxilo/cling'

sudo docker build --tag $tag .

# sudo docker push $tag