#!/usr/bin/env bash
set -e
test -t 1 && USE_TTY="-it"
docker run $USE_TTY \
  --net=host \
  -e STITCH_CLIENT_ID \
  -e STITCH_TOKEN \
  --rm singer-exchangeratesapi
