#include <float.h>
#include <math.h>
#include <stdio.h>
#include <stdbool.h>

static double fast_fabs(double v) {
	*((long*)&v) &= (~(1L << 63));
	return v;
}

static bool equal_approx(double a, double b) {
	return (fast_fabs(a - b) < DBL_EPSILON);
}

int main(void) {
	double a = 0.2;
	double b = 1 / sqrt(5) / sqrt(5);
	printf("a = %.20f\nb = %.20f\n", a, b);
	printf("a == b ? %s\n", (a == b) ? "true" : "false");
	printf("a ~= b ? %s\n", equal_approx(a, b) ? "true" : "false");
	return 0;
}
