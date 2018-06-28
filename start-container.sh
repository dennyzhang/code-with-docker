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
## Updated: Time-stamp: <2018-06-27 21:17:37>
##-------------------------------------------------------------------
case $LANG_DEV in
    golang)
        [ -n "$SRC_DIR" ] || SRC_DIR="${HOME}/code/${LANG_DEV}_test"
        [ -n "$DOCKER_IMAGE" ] || DOCKER_IMAGE="denny/code-with-docker:golang-base"
        [ -n "$CONTAINER_NAME" ] || CONTAINER_NAME="${LANG}-dev"
        ;;
    python)
        [ -n "$SRC_DIR" ] || SRC_DIR="${HOME}/code/${LANG_DEV}_test"
        [ -n "$DOCKER_IMAGE" ] || DOCKER_IMAGE="denny/code-with-docker:python-base"
        [ -n "$CONTAINER_NAME" ] || CONTAINER_NAME="${LANG_DEV}-dev"
        ;;
    *)
        echo "Supported languages: golang|python"
        exit 1
esac

if docker ps | grep $CONTAINER_NAME 1>/dev/null 2>&1 ; then
    echo "Stop existing container($CONTAINER_NAME), if running."
    docker stop "$CONTAINER_NAME"; docker rm "$CONTAINER_NAME" || true
fi

set -x
docker run -t -d -v ${SRC_DIR}:/root/code \
       -h "$CONTAINER_NAME" --name "$CONTAINER_NAME" --entrypoint=/bin/sh -w /root/code "$DOCKER_IMAGE"
set +x

echo "Local source code dir in host: $SRC_DIR; in container /root/code"
echo "Login to container: docker exec -it $CONTAINER_NAME sh"
## File : start-container.sh ends
