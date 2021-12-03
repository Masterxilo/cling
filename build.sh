#!/bin/bash
. ./bash_lib

tag='masterxilo/cling'

sudo docker build --tag $tag .

# docker-login
# then:
# sudo docker push masterxilo/cling