# code-with-docker
Use docker to write code in different languages

# Run code developemnt

## Golang

```
export SRC_DIR="/Users/zdenny/code/go_test"
export DOCKER_IMAGE="denny/code-with-docker:golang-base"
export CONTAINER_NAME="go-dev"
docker run -t -d -v ${SRC_DIR}:/root/code \
       -h "$CONTAINER_NAME" --name "$CONTAINER_NAME" --entrypoint=/bin/sh "$DOCKER_IMAGE"

docker exec -it "$CONTAINER_NAME" sh

# run code test
go run ./test.go
```

Install facilities to the docker image

Switch golang version

## Python
