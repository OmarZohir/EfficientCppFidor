clang++-11 -g -O3 -mavx2 -Wall -pedantic example.cpp -lprofiler -o example
CPUPROFILE=prof.data CPUPROFILE_FREQUENCY=1000 ./example
google-pprof --text --lines ./example prof.data
perf record -g ./example