#!/bin/bash

mkdir -p /home/mike/container_data/home_assistant

docker stack deploy -c stack.yml home_assistant
