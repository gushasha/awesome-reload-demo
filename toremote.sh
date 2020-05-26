#!/bin/bash

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build shutdown-simple.go
echo "build finished"

scp ./shutdown-simple dev:/home/www/test/shutdown-simple_new
echo "copy finished"

ssh dev "/home/www/test/codemonitor.sh"
echo "code updated"
