define double @Test(double %0, double %1, double %2) {
  %4 = fmul fast double %1, %2
  %5 = fmul fast double %0, %0
  %6 = fadd fast double %4, %5
  %7 = fmul fast double %1, %0
  %8 = fadd fast double %7, %6
  %9 = fmul fast double %2, %0
  %10 = fadd fast double %9, %8
  ret double %10
}