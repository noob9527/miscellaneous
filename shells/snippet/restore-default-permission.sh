#!/usr/bin/env bash

find . -type d -exec chmod $((0777 - $(umask))) {} \;
