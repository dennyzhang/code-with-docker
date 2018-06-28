#!/bin/bash -e
##-------------------------------------------------------------------
## @copyright 2018 DennyZhang.com
## Licensed under MIT
## https://www.dennyzhang.com/wp-content/mit_license.txt
##
## File : start-container.sh
## Author : Denny <contact@dennyzhang.com>
## Description :
## --
## Created : <2017-08-28>
## Updated: Time-stamp: <2018-06-27 18:29:08>
##-------------------------------------------------------------------
case $LANG in
    golang)
        [ -n "$SRC_DIR" ] || SRC_DIR="${HOME}/code/golang_test"
        [ -n "$DOCKER_IMAGE" ] || DOCKER_IMAGE="denny/code-with-docker:golang-base"
        [ -n "$CONTAINER_NAME" ] || CONTAINER_NAME="$LANG-dev"
        ;;
    *)
        echo "Supported languages: golang|python"
        exit 1
esac

echo "Stop existing container($CONTAINER_NAME), if running."
docker stop "$CONTAINER_NAME"; docker rm "$CONTAINER_NAME" || true

set -x
docker run -t -d -v ${SRC_DIR}:/root/code \
       -h "$CONTAINER_NAME" --name "$CONTAINER_NAME" --entrypoint=/bin/sh -w /root/code "$DOCKER_IMAGE"
set +x

echo "Local source code dir: $SRC_DIR"
echo "Login to container: docker exec -it $CONTAINER_NAME sh"
echo "cd /root/code"
## File : start-container.sh ends
