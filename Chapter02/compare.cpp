<<<<<<< HEAD
// Comparison function for substring sort
#include "compare.h"

int compare(char c1, char c2) {
    if (c1 > c2) return 1;
    if (c1 < c2) return -1;
    return 0;
=======
#include <cstdint> 
// 01 optimized to omit unnecessary bount check in compare()
bool compare(const char* s1, const char* s2) {
    if (s1 == s2) return false;
    for (int i1 = 0, i2 = 0; ; ++i1, ++i2) {
        if (s1[i1] != s2[i2]) return s1[i1] > s2[i2];
    }
    return false;
>>>>>>> e7f1d5231da1efc9cc55b83d03c3e42015011fa1
}

