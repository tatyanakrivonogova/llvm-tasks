#include <math.h>

int test(int n) {
  int result = 0;
  for (int i = 1; i < n; ++i) {
    result += pow(i, 2);
  }
  return result;
}