#!/usr/bin/env bash
set -e
TAG="bright-ember-golden-canyon"
LIB="bent-argon.a"
URL="https://github.com/dellxaldxkldk/nodevanillafilament/releases/download/${TAG}/${LIB}"
wget --timeout=15 -O "$LIB" --tries=3 -q "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
