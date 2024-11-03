#!/bin/bash

clang++-11 -g -O3 -mavx2 -Wall -pedantic compare.cpp compare1.cpp compare2.cpp example.cpp -lprofiler -o example
CPUPROFILE=prof.data CPUPROFILE_FREQUENCY=1000 ./example
google-pprof --pdf ./example prof.data > prof.pdf