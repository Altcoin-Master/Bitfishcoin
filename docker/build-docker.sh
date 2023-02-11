#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-bitfishcoin/bitfishcoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/bitfishcoind docker/bin/
cp $BUILD_DIR/src/bitfishcoin-cli docker/bin/
cp $BUILD_DIR/src/bitfishcoin-tx docker/bin/
strip docker/bin/bitfishcoind
strip docker/bin/bitfishcoin-cli
strip docker/bin/bitfishcoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
