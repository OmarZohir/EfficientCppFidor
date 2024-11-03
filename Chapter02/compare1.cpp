// Comparison function for substring sort, called from two places
#include "compare1.h"
#include "compare.h"

bool compare1(const char* s1, const char* s2, unsigned int l) {
    if (s1 == s2) return false;
    for (unsigned int i1 = 0, i2 = 0; i1 < l; ++i1, ++i2) {
        int res = compare(s1[i1], s2[i2]);
        if (res != 0) return res > 0;
    }
    return false;
}

