#!/bin/bash

source ./environment

mkdir -p $NETDATA_DATA

docker run -d --name netdata_temp netdata/netdata
docker cp netdata_temp:/etc/netdata $NETDATA_DATA/
docker rm -f netdata_temp