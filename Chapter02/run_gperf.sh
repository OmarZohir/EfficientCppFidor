clang++-11 -g -O3 -mavx2 -Wall -pedantic compare.cpp example.cpp -lprofiler -o example
CPUPROFILE=prof.data CPUPROFILE_FREQUENCY=1000 ./example