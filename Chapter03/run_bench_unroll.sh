clang++-11 -g -O3 -mavx2 -march=native -funroll-loops -I"$GBENCH_DIR/include" \
 -L"$GBENCH_DIR/lib" benchmark.cpp  -lbenchmark -pthread -lrt -lm -o benchmark
./benchmark