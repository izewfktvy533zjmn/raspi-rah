#!/bin/bash

docker build -t raspi-rah:arm64 .
docker tag raspi-rah:arm64 sosomasox/raspi-rah:arm64
docker push sosomasox/raspi-rah:arm64

exit 0

