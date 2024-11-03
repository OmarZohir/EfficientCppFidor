#!/bin/bash

# Ensure GBENCH_DIR is set
if [ -z "$GBENCH_DIR" ]; then
  echo "Error: GBENCH_DIR environment variable is not set."
  exit 1
fi

# Compile and link
clang++-11 -g -O3 -mavx2 -Wall -pedantic -I"$GBENCH_DIR/include" -L"$GBENCH_DIR/lib" 11_compare_mbm*.cpp  -lbenchmark -pthread -lrt -lm -o benchmark

# Run the benchmark
./benchmark 