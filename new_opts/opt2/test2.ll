define i32 @func(i32 noundef %0, i32 noundef %1, i32 noundef %2) {
  %4 = shl i32 %2, 1
  %5 = add i32 %4, %1
  %6 = mul i32 %5, %1
  %7 = shl i32 %1, 1
  %8 = shl i32 %2, 1
  %9 = add i32 %8, %7
  %10 = add i32 %9, %0
  %11 = mul i32 %10, %0
  %12 = add i32 %11, %6
  %13 = mul i32 %2, %2
  %14 = add i32 %13, %12
  ret i32 %14
}