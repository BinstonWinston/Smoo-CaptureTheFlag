#!/bin/bash

ISEMU=${ISEMU:-0}

echo "Emulator enabled? ISEMU='$ISEMU'"

export DOCKER_BUILDKIT=1
docker  build  .  -t smoo-client-build
docker  run  --rm       \
  -u $(id -u):$(id -g)  \
  -v "/$PWD/":/app/     \
  -e ISEMU=${ISEMU}     \
  smoo-client-build     \
  $@ \
;
# docker  rmi  smoo-client-build

cp -r ./romfs "./starlight_patch_100/atmosphere/contents/0100000000010000"
