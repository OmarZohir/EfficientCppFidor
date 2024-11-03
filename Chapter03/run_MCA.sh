clang++-11 benchmark.cpp -g -O3 -mavx2 --std=c++17 -mllvm -x86-asm-syntax=intel \
-S -o  - | llvm-mca-11 -mcpu=btver2 -timeline