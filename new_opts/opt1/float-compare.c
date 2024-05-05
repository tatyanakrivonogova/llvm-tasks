#include <math.h>
#include <stdio.h>

int main(void) {
	double a = 0.2;
	double b = 1 / sqrt(5) / sqrt(5);
	printf("a = %.20f\nb = %.20f\n", a, b);
	printf("a == b ? %s\n", (a == b) ? "true" : "false");
	return 0;
}
