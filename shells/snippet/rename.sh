#!/usr/bin/env bash

# https://stackoverflow.com/questions/16541582/find-multiple-files-and-rename-them-in-linux
find . -name "old*.*" -exec rename "s/old/new/" '{}' \;

