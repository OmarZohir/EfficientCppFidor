<<<<<<< HEAD
// 01 with inline comparison function
=======
// 01 optimized to omit unnecessary bount check in compare()
// Build as follows:
// $CXX 03_substring_sort.C 03_substring_sort_a.C -g -O3 -I. --std=c++17 -o 01_substring_sort
>>>>>>> e7f1d5231da1efc9cc55b83d03c3e42015011fa1
#include <algorithm>
#include <chrono>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <memory>
#include <random>
#include <vector>

using std::chrono::duration_cast;
using std::chrono::milliseconds;
using std::chrono::system_clock;
using std::cout;
using std::endl;
using std::minstd_rand;
using std::unique_ptr;
using std::vector;

<<<<<<< HEAD
bool compare(const char* s1, const char* s2, unsigned int l) {
    if (s1 == s2) return false;
    for (unsigned int i1 = 0, i2 = 0; i1 < l; ++i1, ++i2) {
        if (s1[i1] != s2[i2]) return s1[i1] > s2[i2];
    }
    return false;
}
=======
bool compare(const char* s1, const char* s2);
>>>>>>> e7f1d5231da1efc9cc55b83d03c3e42015011fa1

int main() {
#include "00_substring_sort_prep.cpp"

    size_t count = 0;
<<<<<<< HEAD
    std::sort(vs.begin(), vs.end(), [&](const char* a, const char* b) { ++count; return compare(a, b, L); });
=======
    std::sort(vs.begin(), vs.end(), [&](const char* a, const char* b) { ++count; return compare(a, b); });
>>>>>>> e7f1d5231da1efc9cc55b83d03c3e42015011fa1
    //for (unsigned int i = 0; i < N; ++i) cout << "vs[" << i << "]=" << vs[i] << endl;
    system_clock::time_point t2 = system_clock::now();
    cout << "Sort time: " << duration_cast<milliseconds>(t2 - t1).count() << "ms (" << count << " comparisons)" << endl;
}
