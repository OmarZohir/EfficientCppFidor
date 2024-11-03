clang++-11 -g -O3 -mavx2 -Wall -pedantic example.cpp -o example
perf record -F 6200 -g ./example
perf annotate 