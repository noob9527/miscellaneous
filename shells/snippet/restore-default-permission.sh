#!/usr/bin/env bash

# https://unix.stackexchange.com/questions/249845/reset-permissions-back-to-default
# restore dir
find . -type d -exec chmod $((0777 - $(umask))) {} \;
# restore file
find . -type f -exec chmod $((0666 - $(umask))) {} \;

