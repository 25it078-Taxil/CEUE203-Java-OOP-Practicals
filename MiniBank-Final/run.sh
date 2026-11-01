#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
if [ ! -f minibank.jar ]; then ./build.sh; fi
java -jar minibank.jar
