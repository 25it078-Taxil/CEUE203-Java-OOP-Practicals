#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
rm -rf out minibank.jar
mkdir -p out
find src -name '*.java' -print0 | xargs -0 javac --release 17 -encoding UTF-8 -d out
printf 'Main-Class: MiniBank\n' > manifest.mf
jar cfm minibank.jar manifest.mf -C out .
echo 'Build successful: minibank.jar'
