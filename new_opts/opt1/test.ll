define double @Test(double %x, double %a, double %b) {
  %powa = tail call fast double @llvm.pow.f64(double %x, double %a)
  %powb = tail call fast double @llvm.pow.f64(double %x, double %b)
  %res = fmul fast double %powb, %powa
  ret double %res
}

declare double @llvm.pow.f64(double, double)
