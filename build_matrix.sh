#!/usr/bin/env bash

set -e

function build() {
    echo "build GHC=$1 containers=$2"
    cabal v2-build -v0 -O0 --enable-tests \
          -w ghc-$1 --constraint="containers ==$2" \
          && echo "Ok"
}

build 8.0.2 0.5.7.1
build 8.0.2 0.5.8.2
build 8.0.2 0.5.9.2
build 8.0.2 0.5.10.1
build 8.0.2 0.5.11.0
build 8.0.2 0.6.0.1
build 8.0.2 0.6.1.1
build 8.0.2 0.6.2.1

build 8.2.2 0.5.7.1
build 8.2.2 0.5.8.2
build 8.2.2 0.5.9.2
build 8.2.2 0.5.10.1
build 8.2.2 0.5.11.0
build 8.2.2 0.6.0.1
build 8.2.2 0.6.1.1
build 8.2.2 0.6.2.1

build 8.4.4 0.5.11.0
build 8.4.4 0.6.0.1
build 8.4.4 0.6.1.1
build 8.4.4 0.6.2.1

build 8.6.5 0.5.11.0
build 8.6.5 0.6.0.1
build 8.6.5 0.6.1.1
build 8.6.5 0.6.2.1

build 8.8.1 0.5.11.0
build 8.8.1 0.6.0.1
build 8.8.1 0.6.1.1
build 8.8.1 0.6.2.1
