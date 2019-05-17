#!/bin/sh

env GOOS=linux GOARCH=386 go build -ldflags="-s -w" -o goroute .

docker build -t odp:proxy.3.3.2 .