#!/bin/bash

mkdir -p /home/mike/container_data/registry

docker stack deploy -c stack.yml registry