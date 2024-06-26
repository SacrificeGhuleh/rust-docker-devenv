#!/bin/sh

if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

NAME=$1
mkdir -p rust
cd rust
cargo new $NAME --bin
