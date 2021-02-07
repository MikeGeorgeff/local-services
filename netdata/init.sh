#!/bin/bash

source ./environment

mkdir -p $NETDATA_DATA
mkdir -p $NETDATA_DATA/config

docker run -d --name netdata_temp netdata/netdata
docker cp netdata_temp:/etc/netdata $NETDATA_DATA/config/
docker rm -f netdata_temp