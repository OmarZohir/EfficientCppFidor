// Comparison function for substring sort
#include "compare.h"

int compare(char c1, char c2) {
    if (c1 > c2) return 1;
    if (c1 < c2) return -1;
    return 0;
}

