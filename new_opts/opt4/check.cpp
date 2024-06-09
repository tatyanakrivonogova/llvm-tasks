#include <chrono>
#include <cstdlib>
#include <iostream>
#include <vector>

#define SIZE 10000

int one_is_zero(int a, int b) {
  return (a == 0 && b != 0) || (a != 0 && b == 0);
}

int main(int argc, char **argv) {
  long long int N = atoll(argv[1]);
  srand(21204 + 21212);
  long sum = 0;
  std::vector<int> a;
  std::vector<int> b;
  a.reserve(1000);
  b.reserve(1000);

  for (int i = 0; i < SIZE; ++i) {
    a.push_back(rand() % 1000);
    b.push_back(rand() % 1000);
  }

  auto start = std::chrono::high_resolution_clock::now();

  for (long long int i = 0; i < N; ++i) {
    sum += one_is_zero(a[i % SIZE], b[i % SIZE]);
  }

  auto end = std::chrono::high_resolution_clock::now();
  std::cout << sum << std::endl;
  std::chrono::duration<double> elapsed = end - start;

  std::cout << "Время выполнения: " << elapsed.count() << " секунд\n";

  return 0;
}