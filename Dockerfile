FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y 

# unminimize and enable man so that we can do 'man cling' later to obtain the manual6+ -- this takes a while
# but: anyways there is "No manual entry for cling"
#RUN yes | unminimize && apt-get install -y man-db

WORKDIR /opt/cling
# OPTIMIZATION run steps in different layers [[
COPY ./bash_lib .
COPY ./lib .
RUN ./lib

COPY ./download-latest-cling-archive.sh .
RUN ./download-latest-cling-archive.sh
COPY ./extract-cling-archive-here.sh .
RUN ./extract-cling-archive-here.sh
# ]]

COPY . .
RUN ./install-cling.sh

ENTRYPOINT [ "cling" ]
