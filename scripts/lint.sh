#!/usr/bin/env bash

set -e

for dir in concurrent bounded-vec hash-set indexed; do
    cd $dir
    cargo fmt -- --check
    cargo clippy --all-targets -- -D warnings
    cargo test --all-targets
    cd ..
done