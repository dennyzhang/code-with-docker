# code-with-docker
Use docker to write code in different languages

# Run code developemnt

## Golang

```
export SRC_DIR="/Users/zdenny/Dropbox/private_data/work/vmware/go_test"
export DOCKER_IMAGE="golang:onbuild"
export CONTAINER_NAME="go-dev"
docker run -t -d --privileged -v ${SRC_DIR}:/root/code -h $CONTAINER_NAME --name go-build --entrypoint=/bin/sh "$DOCKER_IMAGE"

docker exec -it $CONTAINER_NAME bash
go run ./test.go
```

Install facilities to the docker image

Switch golang version

## Python
