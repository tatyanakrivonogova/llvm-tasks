define double @Test(double %0, double %1, double %2) {
  %4 = fmul double %1, %2
  %5 = fmul double %0, %0
  %6 = fadd double %4, %5
  %7 = fmul double %1, %0
  %8 = fadd double %7, %6
  %9 = fmul double %2, %0
  %10 = fadd double %9, %8
  ret double %10
}