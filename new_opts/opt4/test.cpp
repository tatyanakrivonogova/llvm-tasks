int test1(int a, int b) { return (a == 0 && b != 0) || (a != 0 && b == 0); }

int test2(int a, int b) { return (b != 0 && a == 0) || (a != 0 && b == 0); }

int test3(int a, int b) { return (a == 0 && b != 0) || (b == 0 && a != 0); }

int test4(int a, int b) { return (b != 0 && a == 0) || (b == 0 && a != 0); }

int test5(int a, int b) { return (a != 0 && b == 0) || (a == 0 && b != 0); }

int test6(int a, int b) { return (b == 0 && a != 0) || (a == 0 && b != 0); }

int test7(int a, int b) { return (a != 0 && b == 0) || (b != 0 && a == 0); }

int test8(int a, int b) { return (b == 0 && a != 0) || (b != 0 && a == 0); }

int test9(int a, int b) { return (0 == a && 0 != b) || (0 != a && 0 == b); }

int test10(int a, int b) { return (0 == b && 0 != a) || (0 != b && 0 == a); }

int test11(int a, int b, int c, int d) {
  return ((a * b) == 0 && (c * d) != 0) || ((a * b) != 0 && (c * d) == 0);
}

int test12(int a, int b, int c, int d) {
  return (0 == (a * b) && 0 != (c * d)) || (0 != (a * b) && 0 == (c * d));
}