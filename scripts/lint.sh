#!/usr/bin/env bash

set -e

for dir in bounded-vec; do
    cd $dir
    cargo fmt -- --check
    cargo clippy --all-targets -- -D warnings
    cargo test --all-targets
    cd ..
done
