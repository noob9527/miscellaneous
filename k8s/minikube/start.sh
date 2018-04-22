#!/usr/bin/env bash

export HTTP_PROXY=socks5://127.0.0.1:1080
export HTTPS_PROXY=socks5://127.0.0.1:1080
export NO_PROXY=localhost,127.0.0.1,192.168.99.0/24,192.168.39.0/24,10.96.0.0/12

minikube start \
  --docker-env HTTP_PROXY=$HTTP_PROXY \
  --docker-env HTTPS_PROXY=$HTTPS_PROXY \
  --docker-env NO_PROXY=$NO_PROXY
