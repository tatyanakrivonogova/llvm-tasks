#include <chrono>
#include <cstdlib>
#include <iostream>
#include <vector>

#define SIZE 10000

int triple_brackets_mul(int a, int b, int c) {
  return a * a + b * b + c * c + 2 * a * b + 2 * a * c + 2 * b * c;
}

int main(int argc, char **argv) {
  long long int N = atoll(argv[1]);
  srand(21204 + 21212);
  long sum = 0;
  std::vector<int> a;
  std::vector<int> b;
  std::vector<int> c;
  a.reserve(1000);
  b.reserve(1000);
  c.reserve(1000);

  for (int i = 0; i < SIZE; ++i) {
    a.push_back(rand() % 1000);
    b.push_back(rand() % 1000);
    c.push_back(rand() % 1000);
  }

  auto start = std::chrono::high_resolution_clock::now();

  for (long long int i = 0; i < N; ++i) {
    sum += (triple_brackets_mul(a[i % SIZE], b[i % SIZE], c[i % SIZE])) % 2;
  }

  auto end = std::chrono::high_resolution_clock::now();
  std::cout << sum << std::endl;
  std::chrono::duration<double> elapsed = end - start;

  std::cout << "Время выполнения: " << elapsed.count() << " секунд\n";

  return 0;
}