#!/usr/bin/env bash

containers_versions='0.5.7.1 0.5.8.2 0.5.9.2 0.5.10.1 0.5.11.0 0.6.0.1'

function build() {
    cabal new-build --enable-tests -w ghc-$1 --constraint="containers ==$2" \
      -O0
}

build 8.0.2 0.5.7.1
build 8.0.2 0.5.8.2
build 8.0.2 0.5.9.2
build 8.0.2 0.5.10.1
build 8.0.2 0.5.11.0
build 8.0.2 0.6.0.1

build 8.2.2 0.5.7.1
build 8.2.2 0.5.8.2
build 8.2.2 0.5.9.2
build 8.2.2 0.5.10.1
build 8.2.2 0.5.11.0
build 8.2.2 0.6.0.1

build 8.4.3 0.5.11.0
build 8.4.3 0.6.0.1

build 8.6.3 0.5.11.0
build 8.6.3 0.6.0.1
