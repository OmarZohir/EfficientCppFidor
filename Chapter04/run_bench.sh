#!/bin/bash

# Ensure GBENCH_DIR is set
export GBENCH_DIR=/usr/local
if [ -z "$GBENCH_DIR" ]; then
  echo "Error: GBENCH_DIR environment variable is not set."
  exit 1
fi

# Check if a filename is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <source_file.cpp>"
  exit 1
fi
# Set locale for thousand separators
export LC_NUMERIC="en_US.UTF-8"
# Compile and link
clang++-11 -g -O3 -mavx2 -Wall -pedantic -I"$GBENCH_DIR/include" -L"$GBENCH_DIR/lib" "$1" -lbenchmark -pthread -lrt -lm -o benchmark

# # Run the benchmark
# ./benchmark

perf stat -e cycles,instructions,L1-dcache-load-misses,L1-dcache-loads ./benchmark