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
## Updated: Time-stamp: <2018-06-27 17:19:57>
##-------------------------------------------------------------------
case $LANG in
    golang)
        [ -z "$SRC_DIR" ] || SRC_DIR="${HOME}/code/golang_test"
        [ -z "$DOCKER_IMAGE" ] || DOCKER_IMAGE="denny/code-with-docker:golang-base"
        [ -z "$CONTAINER_NAME" ] || CONTAINER_NAME="$LANG-dev"
        ;;
    *)
        echo "Not supported language: $1"
esac
docker run -t -d -v ${SRC_DIR}:/root/code \
       -h "$CONTAINER_NAME" --name "$CONTAINER_NAME" --entrypoint=/bin/sh "$DOCKER_IMAGE"

echo "Local source code dir: $SRC_DIR"
echo "Login to container: docker exec -it $CONTAINER_NAME sh"
## File : start-container.sh ends
