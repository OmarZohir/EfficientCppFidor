clang++-11 -g -O3 -mavx2 -Wall -pedantic compare.cpp example.cpp -lprofiler -o example
<<<<<<< HEAD
CPUPROFILE=prof.data CPUPROFILE_FREQUENCY=1000 ./example
=======
CPUPROFILE=prof.data ./example
>>>>>>> e7f1d5231da1efc9cc55b83d03c3e42015011fa1
