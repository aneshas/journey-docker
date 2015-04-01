#!/bin/bash
go get github.com/kabukky/journey
cd /root/go/src/github.com/kabukky/journey
git submodule update --init --recursive
go build
./journey --custom-path /data
while true; do sleep 1d; done

