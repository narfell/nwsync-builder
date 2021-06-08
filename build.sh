#!/usr/bin/env bash

which docker;

if [[ $? != 0 ]]; then
  echo "usage: make sure you have docker installed and in your path."
  exit 1
fi

NWSYNC_VERSION=$1

if [[ $# != 1 ]]; then
  NWSYNC_VERSION="0.3.2" # grabbing the latest when this was written
fi

set -ex

docker build -t narfell/nwsync-manifest-builder:$NWSYNC_VERSION --build-arg NWSYNC_VERSION=$NWSYNC_VERSION .