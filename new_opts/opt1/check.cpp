#include <chrono>
#include <cstdlib>
#include <iostream>
#include <vector>

#define SIZE 10000

int brackets_mul(int x, int a, int b) { return x * x + x * a + x * b + a * b; }

int main(int argc, char **argv) {
  long long int N = atoll(argv[1]);
  srand(21204 + 21212);
  long sum = 0;
  std::vector<int> x;
  std::vector<int> a;
  std::vector<int> b;
  x.reserve(1000);
  a.reserve(1000);
  b.reserve(1000);

  for (int i = 0; i < SIZE; ++i) {
    x.push_back(rand() % 1000);
    a.push_back(rand() % 1000);
    b.push_back(rand() % 1000);
  }

  auto start = std::chrono::high_resolution_clock::now();

  for (long long int i = 0; i < N; ++i) {
    sum += (brackets_mul(x[i % SIZE], a[i % SIZE], b[i % SIZE])) % 2;
  }

  auto end = std::chrono::high_resolution_clock::now();
  std::cout << sum << std::endl;
  std::chrono::duration<double> elapsed = end - start;

  std::cout << "Время выполнения: " << elapsed.count() << " секунд\n";

  return 0;
}