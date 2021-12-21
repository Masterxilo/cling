#!/bin/bash
. ./bash_lib

tag='masterxilo/cling'

sudo docker build --tag $tag . || sudo docker build --no-cache --tag $tag .

# docker-login
# then:
# sudo docker push masterxilo/cling