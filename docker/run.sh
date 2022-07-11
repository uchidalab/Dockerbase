#!/bin/bash
docker run \
    -d \
    --init \
    --rm \
    -p 15000:5000 \
    -p 16006:6006 \
    -p 18889:8888 \
    -it \
    --gpus=all \
    --ipc=host \
    --name=my_docker \
    --env-file=.env \
    --volume=$PWD:/workspace \
    my_docker:latest \
    fish
