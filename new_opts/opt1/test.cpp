int test1(int x, int a, int b) { return x * x + x * a + x * b + a * b; }

int test2(int x, int a, int b) { return x * x + a * x + b * x + b * a; }

int test3(int x, int a, int b) { return a * b + x * a + x * b + x * x; }

int test4(int x, int a, int b) { return x * (x + a + b) + a * b; }

int test5(int x, int a, int b) { return x * a + x * b + a * b + x * x; }

int test6(int x, int a, int a1, int b) {
  return x * (a + a1) + x * b + (a + a1) * b + x * x;
}

int test7(int x, int a, int b, int b1) {
  return x * a + x * (b + b1) + a * (b + b1) + x * x;
}

int test8(int x, int x1, int a, int b) {
  return (x + x1) * a + (x + x1) * b + a * b + (x + x1) * (x + x1);
}

int test9(int x, int x1, int a, int a1, int b, int b1, int b2) {
  return (x + x1) * (a + a1) + (x + x1) * (b + b1 + b2) +
         (a + a1) * (b + b1 + b2) + (x + x1) * (x + x1);
}