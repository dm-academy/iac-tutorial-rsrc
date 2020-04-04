#!/bin/bash

docker run --name raddit-app \
    --env DATABASE_HOST=mongo-database \
    --network raddit-network \
    --publish 9292:9292 \
    --detach raddit
